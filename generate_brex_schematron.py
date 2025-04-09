from lxml import etree

brex_path = "DMC-S1000D-F-04-10-0301-00A-022A-D_001-00_EN-US.XML"
tree = etree.parse(brex_path)
root = tree.getroot()

ns = {'ns': root.nsmap.get(None)} if None in root.nsmap else {}
SCH_NS = "http://purl.oclc.org/dsdl/schematron"

schematron_root = etree.Element(f"{{{SCH_NS}}}schema", nsmap={"sch": SCH_NS})

etree.SubElement(schematron_root, f"{{{SCH_NS}}}title").text = "Règles BREX auto-générées"

pattern = etree.SubElement(schematron_root, f"{{{SCH_NS}}}pattern", name="BREX rules")

rules = root.findall('.//structureObjectRule', namespaces=ns)

for rule in rules:
    decision = rule.find('.//brDecisionRef', namespaces=ns)
    decision_id = decision.get('brDecisionIdentNumber') if decision is not None else "BREX-UNKNOWN"
    
    path_elem = rule.find('.//objectPath', namespaces=ns)
    xpath = path_elem.text.strip() if path_elem is not None else None
    flag = path_elem.get('allowedObjectFlag') if path_elem is not None else None

    use_elem = rule.find('.//objectUse', namespaces=ns)
    message = use_elem.text.strip() if use_elem is not None else "Pas de message."

    if not xpath or not flag:
        continue

    context_tag = xpath.replace('//', '').split('[')[0].split('/')[0]
    sch_rule = etree.SubElement(pattern, f"{{{SCH_NS}}}rule", context=context_tag)

    if flag == "0":
        etree.SubElement(sch_rule, f"{{{SCH_NS}}}assert", test=f"not({xpath})").text = f"{decision_id}: {message}"
    elif flag == "1":
        etree.SubElement(sch_rule, f"{{{SCH_NS}}}assert", test=f"{xpath}").text = f"{decision_id}: {message}"

etree.ElementTree(schematron_root).write("brex.sch", pretty_print=True, xml_declaration=True, encoding='UTF-8')
print("✅ Fichier brex.sch ISO-compatible généré avec succès.")
