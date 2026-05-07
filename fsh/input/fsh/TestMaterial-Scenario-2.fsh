// FHIR test instances in FSH format for Pathology test scenario 2

Instance: Pathology-Request-Rommella
InstanceOf: PathRequest
Usage: #example
* status = #completed
* intent = #order
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* category[requestType] = $MercuriusRequestTypeCodeSystemURL#normaal "normaal"
* category[healthScreeningType] = $MercuriusHealthScreeningTypeCodeSystemURL#0 "Geen BVO"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* requester = Reference(Pathology-PractitionerRole-Plijster) "P. Plijster, LUMC"
* reasonCode
  * text = "<div>Vraagstelling</div><div>Afwijkingen?</div><div/>"
* specimen[0] = Reference(Pathology-Specimen-Rommella) "Colon Biopt"
* specimen[1] = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"
* specimen[2] = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"

Instance: Pathology-Specimen-Rommella
InstanceOf: PathRequestSpecimen
Usage: #example
* type
  * text = "Colon Biopt"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* receivedTime = "2026-01-26"
* collection
  * collectedDateTime = "2026-01-25"
  * method
    * text = "biopsie"

Instance: Pathology-Specimen-Rommella-Sample-1
InstanceOf: PathRequestSpecimen
Usage: #example
* type
  * text = "Colon Biopt"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* receivedTime = "2026-01-26"
* parent = Reference(Pathology-Specimen-Rommella) "Colon Biopt"
* collection
  * collectedDateTime = "2026-01-25"
  * method
    * text = "biopsie"

Instance: Pathology-Specimen-Rommella-Sample-2
InstanceOf: PathRequestSpecimen
Usage: #example
* type
  * text = "Colon Biopt"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* receivedTime = "2026-01-26"
* parent = Reference(Pathology-Specimen-Rommella) "Colon Biopt"
* collection
  * collectedDateTime = "2026-01-25"
  * method
    * text = "biopsie"

Instance: Pathology-Report-Rommella
InstanceOf: PathReport
Usage: #example
* identifier[reportIdentifier]
  * system = "urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1"
  * value = "T26-60065"
* basedOn = Reference(Pathology-Request-Rommella) "Request for Histopathology test"
* status = #final
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* effectivePeriod
  * start = "2026-01-26"
  * end = "2026-02-03"
* resultsInterpreter = Reference(Pathology-PractitionerRole-Oosting) "Jan Oosting, LUMC, patholoog"
* specimen[0] = Reference(Pathology-Specimen-Rommella) "Colon Biopt"
* specimen[1] = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"
* specimen[2] = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-1) "Eerdere therapie"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-2) "Respons op eerdere therapie"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-1-1) "Sample 1, Primaire afwijking"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-1-2) "Sample 1, Type biopt"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-1-3) "Sample 1, Consult"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-1-4) "Sample 1, Lokalisatie"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-1-5) "Sample 1, Bevinding"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-2-1) "Sample 2, Primaire afwijking"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-2-2) "Sample 2, Type biopt"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-2-3) "Sample 2, Consult"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-2-4) "Sample 2, Lokalisatie"
* result[+] = Reference(Pathology-Observation-Rommella-ProtocolDataItem-2-5) "Sample 2, Bevinding"
* result[clinicalInformation] = Reference(Pathology-Observation-Rommella-ClinicalInformation) "Klinische gegevens"
* result[macroscopy] = Reference(Pathology-Observation-Rommella-Macroscopy) "Macroscopie"
* result[microscopy] = Reference(Pathology-Observation-Rommella-Microscopy) "Microscopie"
* conclusion = "<div>I:  Slijmvliesbiopt flexura lienalis: tubulair adenoom met laaggradige dysplasie.</div><div>II:  Slijmvliesbiopt colon descendens: tubulair adenoom met laaggradige dysplasie.</div><div> </div>"

Instance: Pathology-Observation-Rommella-ClinicalInformation
InstanceOf: PathReportClinicalInformation
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Klinische gegevens</div><div>Binnengekomen via BVO, geen klachten</div><div>Aard materiaal</div><div>2 colon biopten</div><div/></div>"
* status = #final
* code = $SCT#404684003 "klinische bevinding"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* specimen = Reference(Pathology-Specimen-Rommella) "Colon Biopt"

Instance: Pathology-Observation-Rommella-Macroscopy
InstanceOf: PathReportMacroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Macroscopie</div><div>1, 2 : biopt, ti ingesloten in 1/A en 2/A</div><div/></div>"
* status = #final
* code = $SCT#168126000 "Sample macroscopy"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* specimen = Reference(Pathology-Specimen-Rommella) "Colon Biopt"

Instance: Pathology-Observation-Rommella-Microscopy
InstanceOf: PathReportMicroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019 en protocol BVO darmkanker RIVM 10.2 (2022)</div><div/><div>Aantal inzendingen: I-II</div><div/><div>I Type biopt / resectie: 1 slijmvliesbiopt</div><div>Lokalisatie: flexura lienalis</div><div>Primaire afwijking: tubulair adenoom</div><div>Bevinding: met laaggradige dysplasie</div><div/><div>II Type biopt / resectie: 1 slijmvliesbiopt</div><div>Lokalisatie: colon descendens</div><div>Primaire afwijking: tubulair adenoom</div><div>Bevinding: met laaggradige dysplasie</div><div/></div>"
* status = #final
* code = $SCT#117259009 "microscopisch onderzoek"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* specimen = Reference(Pathology-Specimen-Rommella) "Colon Biopt"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-1
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1279827005 "Neoadjuvant antineoplastic therapy procedure prior to surgery"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#1255831008 "chemotherapie met gerichte medicatie tegen maligne tumor"
* specimen = Reference(Pathology-Specimen-Rommella) "Colon Biopt"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-2
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1255588004 "Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#1285141002 "gedeeltelijke tumorrespons op antineoplastische neoadjuvante behandeling"
* specimen = Reference(Pathology-Specimen-Rommella) "Colon Biopt"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-1-1
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396984004 "histologisch kenmerk van tumor"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#1156654007 "benigne tubulair adenoom"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-1-2
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#310991000146109 "aantal slijmvliesbiopten"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueString = "1 slijmvliesbiopt"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-1-3
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#11429006 "consult"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#262008008 "Not performed"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-1-4
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#399687005 "locatie van primaire tumor"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#72592005 "flexura lienalis"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-1-5
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1850001000004102 "Histologic grade of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#1155708003 "Low histologic grade"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-1) "Colon Biopt, Sample 1"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-2-1
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396984004 "histologisch kenmerk van tumor"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#1156654007 "benigne tubulair adenoom"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-2-2
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#310991000146109 "aantal slijmvliesbiopten"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueString = "1 slijmvliesbiopt"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-2-3
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#11429006 "consult"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#262008008 "Not performed"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-2-4
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#399687005 "locatie van primaire tumor"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#32622004 "colon descendens"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"

Instance: Pathology-Observation-Rommella-ProtocolDataItem-2-5
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1850001000004102 "Histologic grade of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Rommella) "L. Rommella"
* valueCodeableConcept = $SCT#1155708003 "Low histologic grade"
* specimen = Reference(Pathology-Specimen-Rommella-Sample-2) "Colon Biopt, Sample 2"

Instance: Pathology-Patient-Rommella
InstanceOf: PathPatient
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
* identifier
  * system = $BSN
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked
* name[nameInformation]
  * use = #official
  * text = "L. Rommella"
  * family = "Rommella"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Rommella"
  * given = "L."
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #IN
* gender = #female
* birthDate = "1956-04-05"