import xmlschema
from lxml import etree

# === CONFIGURATION ===
xml_path = "DMC-S1000DBIKE-AAA-D00-00-00-00AA-258B-A_002-00_en-US.XML"
xsd_path = "proced.xsd"
schematron_path = "brex.sch"

# === ÉTAPE 1 : Validation XSD ===
print("🔍 Validation XSD en cours...")
schema = xmlschema.XMLSchema(xsd_path)

xsd_errors = []
if not schema.is_valid(xml_path):
    for error in schema.iter_errors(xml_path):
        xsd_errors.append(str(error))

# === ÉTAPE 2 : Validation BREX/Schematron ===
print("🔍 Validation Schematron en cours...")

doc = etree.parse(xml_path)
sch_doc = etree.parse(schematron_path)
ns = {"sch": "http://purl.oclc.org/dsdl/schematron"}
schematron_errors = []

for rule in sch_doc.findall(".//sch:rule", namespaces=ns):
    context = rule.attrib.get("context")
    if not context:
        continue  # ignorer les règles sans contexte

    try:
        context_nodes = doc.xpath(context)
    except Exception as e:
        schematron_errors.append(f"⚠️ Erreur XPath dans le contexte '{context}' : {e}")
        continue

    for assert_elem in rule.findall("sch:assert", namespaces=ns):
        test_expr = assert_elem.attrib.get("test")
        message = assert_elem.text.strip() if assert_elem.text else "Règle violée"

        for node in context_nodes:
            try:
                passed = node.xpath(test_expr)
            except Exception as e:
                passed = False
                message += f" [Erreur XPath: {e}]"

            if not passed:
                line = node.sourceline
                tag = node.tag
                schematron_errors.append(f"❌ Ligne {line or 'N/A'} | <{tag}> : {message}")

# === AFFICHAGE FINAL ===
print("\n📋 Résultats de validation :\n")

if xsd_errors:
    print(f"❌ {len(xsd_errors)} erreurs XSD :")
    for e in xsd_errors[:10]:
        print("  -", e)
else:
    print("✅ Aucune erreur XSD détectée.")

if schematron_errors:
    print(f"\n❌ {len(schematron_errors)} violations BREX/Schematron :")
    for e in schematron_errors[:10]:
        print("  -", e)
else:
    print("✅ Aucune violation BREX/Schematron détectée.")

# Résumé
if not xsd_errors and not schematron_errors:
    print("\n🎉 Le document est pleinement conforme à la structure XSD et aux règles BREX.")
else:
    print("\n⚠️ Des problèmes ont été détectés dans le document.")
