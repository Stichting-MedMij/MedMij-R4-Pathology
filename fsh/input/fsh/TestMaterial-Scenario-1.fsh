// FHIR test instances in FSH format for Pathology test scenario 1

Instance: Pathology-Request-Olivander
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Request
Usage: #example
* status = #completed
* intent = #order
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* category[requestType] = $MercuriusRequestType#normaal "normaal"
* category[healthScreeningType] = $MercuriusHealthScreeningType#0 "Geen BVO"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* requester = Reference(Pathology-PractitionerRole-Plijster) "P. Plijster, LUMC"
* reasonCode
  * text = "<par>Vraagstelling</par><par>Classificatie</par><par/>"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Specimen-Olivander
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen
Usage: #example
* type
  * text = "Colon Resectie"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* receivedTime = "2026-02-03"

Instance: Pathology-Report-Olivander
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report
Usage: #example
* identifier[reportIdentifier]
  * system = "urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1"
  * value = "T26-60066"
* basedOn = Reference(Pathology-Request-Olivander) "Request for Histopathology test"
* status = #final
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* effectivePeriod
  * start = "2026-02-03"
  * end = "2026-02-03"
* resultsInterpreter = Reference(Pathology-PractitionerRole-Oosting) "Jan Oosting, LUMC, patholoog"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"
* result[clinicalInformation] = Reference(Pathology-Observation-Olivander-ClinicalInformation) "Klinische gegevens"
* result[macroscopy] = Reference(Pathology-Observation-Olivander-Macroscopy) "Macroscopie"
* result[microscopy] = Reference(Pathology-Observation-Olivander-Microscopy) "Microscopie"
* result[protocolData][+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-1) "Afstand tot dichtstbijzijnde darmsnijvlak"
* result[protocolData][+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-2) "Type resectie"
* result[protocolData][+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-3) "Perineurale groei"
* result[protocolData][+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-4) "Tumor aanwezig"
* result[protocolData][+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-5) "Aantal tumoren"
* conclusion = "<par>Hemicolectomie links: type  tumor (WHO):goed/matig gedifferentieerd (laaggradig)   adenocarcinoom; maximale diameter tumor 3,0 cm; lokalisatie: colon descendens; diepste tumor doorgroei:  submucosa.</par><par>Dichtstbijzijnde darmsnijvlak  vrij (afstand &gt;= 1 cm); retroperitoneaal klievingsvlak/radiaire snijvlak  vrij (afstand 0,8 cm).</par><par>Angio-invasie: lymfvat invasie.</par><par>Perineurale invasie: niet aangetroffen.</par><par>Aantal lymfklieren: 15 waarvan met metastasen: 0.</par><par/><par/><par>TNM classificatie Colon en Rectum (9e editie UICC): pT1N0.</par><par>Patient is bekend met: morbus Crohn.</par><par> </par>"

Instance: Pathology-Observation-Olivander-ClinicalInformation
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.ClinicalInformation
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><par>Klinische gegevens</par><par>Adnenocarcinoom bij BVO</par><par>Aard materiaal</par><par>Hemicolectomie</par><par/></div>"
* status = #final
* code = $SCT#404684003 "klinische bevinding"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-Macroscopy
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.Macroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><par>Macroscopie</par><par>Colon resectie met lengte van 20 cm</par><par/></div>"
* status = #final
* code = $SCT#168126000 "Sample macroscopy"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-Microscopy
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.Microscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><par>Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN  versie 2017</par><par/><par>Klinische Gegevens en Macroscopie</par><par>Type resectie: hemicolectomie links</par><par>Niveau van resectie mesocolon: in het mesocolische vet</par><par>Perforatie: niet aanwezig</par><par>Klinisch obstructie / ileus: nee</par><par>Lokalisatie  tumor: colon descendens</par><par>Aspect  tumor: schotelvormig</par><par>Maximale diameter  tumor: 3,0 cm</par><par>Lengte preparaat: 20 cm</par><par>Ingevroren materiaal aanwezig: nee</par><par>Tumor aanwezig: ja, 1 tumor</par><par>Patient is bekend met: morbus Crohn</par><par>Metastase(n): niet gevonden</par><par>Eerdere (neo-adjuvante) therapie: geen</par><par>Vriescoupe tumor: niet verricht</par><par/><par>Microscopie</par><par>Type  tumor (WHO): adenocarcinoom</par><par>Differentiatiegraad: goed/matig gedifferentieerd (laaggradig)</par><par>Diepste tumordoorgroei: submucosa</par><par>Angio-invasie: lymfvat invasie</par><par>Angio-invasie opmerking: geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen</par><par>Tumor budding: laag (Bd1)</par><par>Perineurale groei: niet aangetroffen</par><par>Lymfocytaire infiltratie: ja</par><par/><par>Snijvlakken</par><par>Dichtstbijzijnde darmsnijvlak: distaal vrij op &gt;= 1 cm</par><par>Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij op 0,8 cm</par><par/><par>Lymfklieren</par><par>Aantal lymfklieren: 15</par><par>Aantal lymfklieren met metastasen: 0</par><par>Aantal tumordeposits: 0</par><par/><par>Overige</par><par>Poliep(en): niet aanwezig</par><par/><par>Moleculaire bepaling</par><par>Mutatie analyse: niet uitgevoerdMicroscopie</par><par/></div>"
* status = #final
* code = $SCT#117259009 "microscopisch onderzoek"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-1
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371489008 "afstand van neoplasma tot dichtstbijzijnde snijvlak in preparaat van weefsel verkregen door excisie"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity = 1 'cm'
  * comparator = #>=
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-2
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#2620001000004108 "Specimen collection procedure"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#82619000 "hemicolectomie links"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-3
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371513001 "status van ingroei van tumor rondom zenuw"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-4
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1597451000004100 "Presence of direct invasion by primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-5
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#246214002 "aantal tumoren"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity
  * value = 1
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Patient-Olivander
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Patient
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
* identifier
  * system = $BSN
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked
* name[nameInformation]
  * use = #official
  * text = "G. Olivander"
  * family = "Olivander"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Olivander"
  * given = "G."
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #IN
* gender = #male
* birthDate = "1921-09-25"
* address
  * extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unknown
  * city
    * extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unknown

Instance: Pathology-PractitionerRole-Plijster
InstanceOf: http://medmij.nl/fhir/StructureDefinition/path-Request.Requester
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
* practitioner = Reference(Pathology-Practitioner-Plijster) "P. Plijster"
* organization = Reference(Pathology-Organization-LUMC) "LUMC"
* specialty[specialty]
  * extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unknown

Instance: Pathology-PractitionerRole-Oosting
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Usage: #example
* practitioner = Reference(Pathology-Practitioner-Oosting) "Jan Oosting"
* organization = Reference(Pathology-Organization-LUMC) "LUMC"
* specialty[specialty] = $VektisAGB#0388 "Medisch specialisten, pathologische anatomie"

Instance: Pathology-Practitioner-Plijster
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* name[nameInformation]
  * use = #official
  * text = "P. Plijster"

Instance: Pathology-Practitioner-Oosting
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* name[nameInformation]
  * use = #official
  * text = "Jan Oosting"

Instance: Pathology-Organization-LUMC
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization
Usage: #example
* name = "LUMC"