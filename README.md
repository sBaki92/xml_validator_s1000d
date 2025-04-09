# S1000D XML Validator (XSD + Schematron/BREX)

This project provides a Python-based validator for checking the structural and business-rule compliance of S1000D XML files.

It combines:
- XSD validation to verify the structure of the XML,
- Schematron validation to enforce business rules derived from a BREX file.

---

## Why Validate S1000D XML?

S1000D is a complex XML-based international standard used to structure technical documentation, especially in aerospace, defense, and heavy industry. Ensuring that your XML files follow both the structural constraints (defined in XSD schemas) and the business rules (defined in BREX files) is essential for several reasons:

- Compliance with industry standards and specifications.
- Prevention of invalid or incomplete data that could break downstream systems (e.g., publishing platforms, IETMs).
- Consistency of terminology, code values, and structural elements across multiple data modules.
- Early detection of errors during authoring or editing, saving significant time and cost in the publishing lifecycle.
- BREX (Business Rules Exchange) files encapsulate these business rules, such as:
  - Required attributes or elements,
  - Allowed values for specific fields (e.g., security classification),
  - Structural constraints for elements (e.g., only one `taskDuration`, must be in `h` or `d`),
  - Cross-checks between metadata fields.

By validating against both the XSD schema and the BREX-based rules, this tool ensures your data modules are both technically valid and semantically correct — ready for integration into any S1000D-compliant system.

---

## Features

- Validates XML structure using `proced.xsd` (or any S1000D schema).
- Applies custom or BREX-based rules via a `brex.sch` Schematron file.
- Outputs validation results directly in the console.

---

## Requirements

- Python ≥ 3.8  
- Dependencies:
  - `lxml`
  - `xmlschema`

Install them with:

```bash
pip install lxml xmlschema
```

Or use the included `requirements.txt`:

```bash
pip install -r requirements.txt
```

---

## Recommended Folder Structure

```bash
your_project/
├── validate_s1000d.py         # Main validation script
├── DMC-Example.XML            # Your S1000D XML file
├── proced.xsd                 # XSD schema for structure validation
├── brex.sch                   # Schematron rules (auto-generated from BREX)
├── requirements.txt           # (optional) Python dependencies
```

---

## Run the Validator

```bash
python3 validate_s1000d.py
```

The script will:

1. Validate the XML structure using `proced.xsd`.  
2. Apply Schematron rules from `brex.sch`.  
3. Print out all errors and a summary.

---

## Configuration

Edit `validate_s1000d.py` to point to your own files:

```python
xml_path = "DMC-Example.XML"
xsd_path = "proced.xsd"
schematron_path = "brex.sch"
```

---

## Generating `brex.sch` from a BREX XML

You can extract rules from a BREX XML using the script `generate_brex_schematron.py`, which converts structural rules into Schematron format.

---

## Example Output

```plaintext
XSD validation in progress...
No XSD errors found.

Schematron validation in progress...
3 BREX rule violations:
  - Line 45 | <taskDuration>: BREX-S1-00070: Task duration must be in 'h' or 'd'.
  - Line 102 | <dmStatus>: BREX-S1-00001: Security classification must be present.
```
