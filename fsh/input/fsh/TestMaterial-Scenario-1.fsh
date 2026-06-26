// FHIR test instances in FSH format for Pathology test scenario 1

Instance: Pathology-Request-Olivander
InstanceOf: PathRequest
Usage: #example
* status = #completed
* intent = #order
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* category[requestType] = $MercuriusRequestTypeCodeSystemURL#normaal "normaal"
* category[healthScreeningType] = $MercuriusHealthScreeningTypeCodeSystemURL#0 "Geen BVO"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* requester = Reference(Pathology-PractitionerRole-Plijster) "P. Plijster, LUMC"
* reasonCode
  * text = "<div>Vraagstelling</div><div>Classificatie</div><div/>"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Specimen-Olivander
InstanceOf: PathRequestSpecimen
Usage: #example
* type
  * text = "Colon Resectie"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* receivedTime = "2026-02-03"
* collection
  * collectedDateTime = "2026-02-01"
  * method
    * text = "resectie"

Instance: Pathology-Report-Olivander
InstanceOf: PathReport
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
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-1) "afstand van neoplasma tot dichtstbijzijnde snijvlak in preparaat van weefsel verkregen door excisie"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-2) "Type resectie"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-3) "status van ingroei van tumor rondom zenuw"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-4) "locatie van metastase op afstand"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-5) "status van intactheid van preparaat verkregen door resectie van mesocolon"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-6) "maligne tumor in anamnese"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-7) "Differentiatiegraad"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-8) "Type tumor"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-9) "Tumor budding"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-10) "Perforatie"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-11) "vriescoupetechniek"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-12) "Aspect tumor"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-13) "status van invasie van tumor in bloedvat"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-14) "preparaat van vriescoupe van lichaamsweefsel"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-15) "moleculaire diagnostiek"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-16) "Lymfocytaire infiltratie"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-17) "aantal lymfeklieren aangedaan door maligniteit"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-18) "Aantal tumordeposits"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-19) "Lengte preparaat"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-20) "Dichtstbijzijnde darmsnijvlak"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-21) "afstand van neoplasma tot dichtstbijzijnde radiaal snijvlak in biopt"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-22) "plaats van primaire tumor"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-23) "Tumor aanwezig"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-24) "aantal tumoren"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-25) "Diepste tumordoorgroei"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-26) "Retroperitoneaal klievingsvlak/radiaire snijvlak"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-27) "diagnose"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-28) "grootste lengte van tumor in preparaat verkregen door resectie"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-29) "Poliep(en)"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-30) "aantal onderzochte lymfeklieren"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-31) "Eerdere (neo-adjuvante) therapie"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-32) "Lokalisatie dichtstbijzijnde darmsnijvlak"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-33) "Onderzoek vermelden als"
* result[+] = Reference(Pathology-Observation-Olivander-ProtocolDataItem-34) "obstructie-ileus van dunne darm gelijktijdig met en door impactie"
* result[clinicalInformation] = Reference(Pathology-Observation-Olivander-ClinicalInformation) "Klinische gegevens"
* result[macroscopy] = Reference(Pathology-Observation-Olivander-Macroscopy) "Macroscopie"
* result[microscopy] = Reference(Pathology-Observation-Olivander-Microscopy) "Microscopie"
* conclusion = "<div>Hemicolectomie links: type tumor (WHO):goed/matig gedifferentieerd (laaggradig) adenocarcinoom; maximale diameter tumor 3,0 cm; lokalisatie: colon descendens; diepste tumor doorgroei: submucosa.</div><div>Dichtstbijzijnde darmsnijvlak vrij (afstand &gt;= 1 cm); retroperitoneaal klievingsvlak/radiaire snijvlak vrij (afstand 0,8 cm).</div><div>Angio-invasie: lymfvat invasie.</div><div>Perineurale invasie: niet aangetroffen.</div><div>Aantal lymfklieren: 15 waarvan met metastasen: 0.</div><div/><div/><div>TNM classificatie Colon en Rectum (9e editie UICC): pT1N0.</div><div>Patiënt is bekend met: morbus Crohn.</div><div> </div>"

Instance: Pathology-Observation-Olivander-ClinicalInformation
InstanceOf: PathReportClinicalInformation
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Klinische gegevens</div><div>Adenocarcinoom bij BVO</div><div>Aard materiaal</div><div>Hemicolectomie</div><div/></div>"
* status = #final
* code = $SCT#404684003 "klinische bevinding"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-Macroscopy
InstanceOf: PathReportMacroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Macroscopie</div><div>Colon resectie met lengte van 20 cm</div><div/></div>"
* status = #final
* code = $SCT#168126000 "Sample macroscopy"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-Microscopy
InstanceOf: PathReportMicroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN versie 2017</div><div/><div>Klinische Gegevens en Macroscopie</div><div>Type resectie: hemicolectomie links</div><div>Niveau van resectie mesocolon: in het mesocolische vet</div><div>Perforatie: niet aanwezig</div><div>Klinisch obstructie / ileus: nee</div><div>Lokalisatie tumor: colon descendens</div><div>Aspect tumor: schotelvormig</div><div>Maximale diameter tumor: 3,0 cm</div><div>Lengte preparaat: 20 cm</div><div>Ingevroren materiaal aanwezig: nee</div><div>Tumor aanwezig: ja, 1 tumor</div><div>Patiënt is bekend met: morbus Crohn</div><div>Metastase(n): niet gevonden</div><div>Eerdere (neo-adjuvante) therapie: geen</div><div>Vriescoupe tumor: niet verricht</div><div/><div>Microscopie</div><div>Type tumor (WHO): adenocarcinoom</div><div>Differentiatiegraad: goed/matig gedifferentieerd (laaggradig)</div><div>Diepste tumordoorgroei: submucosa</div><div>Angio-invasie: lymfvat invasie</div><div>Angio-invasie opmerking: geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen</div><div>Tumor budding: laag (Bd1)</div><div>Perineurale groei: niet aangetroffen</div><div>Lymfocytaire infiltratie: ja</div><div/><div>Snijvlakken</div><div>Dichtstbijzijnde darmsnijvlak: distaal vrij op &gt;= 1 cm</div><div>Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij op 0,8 cm</div><div/><div>Lymfklieren</div><div>Aantal lymfklieren: 15</div><div>Aantal lymfklieren met metastasen: 0</div><div>Aantal tumordeposits: 0</div><div/><div>Overige</div><div>Poliep(en): niet aanwezig</div><div/><div>Moleculaire bepaling</div><div>Mutatie analyse: niet uitgevoerd</div><div/></div>"
* status = #final
* code = $SCT#117259009 "microscopisch onderzoek"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-1
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371489008 "afstand van neoplasma tot dichtstbijzijnde snijvlak in preparaat van weefsel verkregen door excisie"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity = 1 'cm'
  * comparator = #>=
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-2
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#2620001000004108 "Specimen collection procedure"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#82619000 "hemicolectomie links"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-3
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371513001 "status van ingroei van tumor rondom zenuw"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-4
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#385421009 "locatie van metastase op afstand"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-5
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#450431000146104 "status van intactheid van preparaat verkregen door resectie van mesocolon"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#1990001000004102 "bijna volledig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-6
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#266987004 "maligne tumor in anamnese"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-7
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1850001000004102 "Histologic grade of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#1155708003 "Low histologic grade"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-8
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#512001000004108 "Histologic type of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#1187332001 "adenocarcinoom"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-9
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1286754008 "Tumor bud score in primary malignant neoplasm of colorectum"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#62482003 "laag"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-10
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1300184003 "Presence of macroscopic perforation of colorectum by primary malignant neoplasm of colorectum"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-11
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#817011007 "vriescoupetechniek"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#385660001 "niet verricht"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-12
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#512001000004108 "Histologic type of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#571451000146108 "afwijkende schotelvorm"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-13
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371512006 "status van invasie van tumor in bloedvat"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#395717001 "ingroei van tumor in lymfevat"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-14
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#16214131000119104 "preparaat van vriescoupe van lichaamsweefsel"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-15
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396927009 "moleculaire diagnostiek"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#385660001 "niet verricht"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-16
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396395003 "Status of tumor infiltration by lymphocytes"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-17
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#443527007 "aantal lymfeklieren aangedaan door maligniteit"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity
  * value = 0
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-18
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1286756005 "Number of metastatic discontinuous tumor deposits of primary malignant neoplasm of colorectum"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity
  * value = 0
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-19
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#384606002 "Length of specimen"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity = 20 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-20
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371491000 "Margin closest to tumor"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-21
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#450461000146108 "afstand van neoplasma tot dichtstbijzijnde radiaal snijvlak in biopt"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity = 0.8 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-22
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#399687005 "plaats van primaire tumor"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#32622004 "colon descendens"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-23
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1597451000004100 "Primary tumor site extension"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-24
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#246214002 "aantal tumoren"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity
  * value = 1
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-25
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#384962004 "Anatomic location directly invaded by primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#68439008 "submucosa"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-26
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1359839002 "Status of surgical radial margin involvement by tumor"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-27
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#439401001 "diagnose"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#34000006 "ziekte van Crohn"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-28
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1597451000004100 "grootste lengte van tumor in preparaat verkregen door resectie"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity = 3.0 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-29
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1286765003 "Histologic type of polyp of colorectum"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-30
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#444025001 "aantal onderzochte lymfeklieren"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity
  * value = 15
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-31
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1279827005 "Neoadjuvant antineoplastic therapy procedure prior to surgery"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#260413007 "geen"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-32
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371491000 "Margin closest to tumor"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#46053002 "ver van"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-33
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#423901009 "Identification code"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueString = "1e tumor"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Olivander-ProtocolDataItem-34
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#733149001 "obstructie-ileus van dunne darm gelijktijdig met en door impactie"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Patient-Olivander
InstanceOf: PathPatient
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
* extension[http://hl7.org/fhir/StructureDefinition/patient-birthPlace]
  * valueAddress
    * city = "Londen"
    * country = "Groot-Brittanië"
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
  * line = "Diagonaalstraat 687"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName].valueString = "Diagonaalstraat"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber].valueString = "687"
  * city = "Londen"
  * postalCode = "5972 XX"

Instance: Pathology-PractitionerRole-Plijster
InstanceOf: PathRequestRequester
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
* practitioner = Reference(Pathology-Practitioner-Plijster) "P. Plijster"
* organization = Reference(Pathology-Organization-LUMC) "LUMC"
* specialty[specialty] = $VektisAGB#0318 "Medisch specialisten, gastro-enterologie (maag-darm-lever-arts)"
* location = Reference(Pathology-Location-LUMC-Polikliniek-MDL) "LUMC, Polikliniek MDL"

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

Instance: Pathology-Location-LUMC-Polikliniek-MDL
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider
Usage: #example
* name = "Polikliniek MDL"
* managingOrganization = Reference(Pathology-Organization-LUMC) "LUMC"