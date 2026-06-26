// FHIR test instances in FSH format for Pathology test scenario 3

Instance: Pathology-Request-Smalhart
InstanceOf: PathRequest
Usage: #example
* status = #completed
* intent = #order
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* category[requestType] = $MercuriusRequestTypeCodeSystemURL#spoed "spoed"
* category[healthScreeningType] = $MercuriusHealthScreeningTypeCodeSystemURL#3 "BVO DDK"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* requester = Reference(Pathology-PractitionerRole-Wachtel) "Z. Wachtel, St. Holisto's Hospitaal"
* reasonCode
  * text = "<div>Vraagstelling</div><div>Classificatie</div><div/>"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Specimen-Smalhart
InstanceOf: PathRequestSpecimen
Usage: #example
* type
  * text = "Colon Resectie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* receivedTime = "2026-06-13"
* collection
  * collectedDateTime = "2026-06-11"
  * method
    * text = "resectie"

Instance: Pathology-Report-Smalhart
InstanceOf: PathReport
Usage: #example
* identifier[reportIdentifier]
  * system = "urn:oid:2.16.840.1.113883.2.4.3.23.3.934.1"
  * value = "T26-61237"
* basedOn = Reference(Pathology-Request-Smalhart) "Request for Histopathology test"
* status = #final
* category[pathology] = $SCT#108257001 "pathologisch-anatomische verrichting"
* code
  * coding[histology] = $SCT#252416005 "Histopathology test"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* effectivePeriod
  * start = "2026-06-13"
  * end = "2026-06-14"
* resultsInterpreter = Reference(Pathology-PractitionerRole-Tholoog) "P.A. Tholoog, St. Holisto's Hospitaal, patholoog"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-1) "Type resectie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-2) "obstructie-ileus van dunne darm gelijktijdig met en door impactie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-3) "locatie van metastase op afstand"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-4) "Status metastasen"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-5) "Type tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-6) "Ki-67 index NEN"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-7) "Diameter grootste metastase NET"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-8) "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-9) "DNA mismatch repair eiwit MLH1"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-10) "Aspect tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-11) "status van invasie van tumor in bloedvat"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-12) "Angio-invasie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-13) "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-14) "DNA mismatch repair eiwit MSH6"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-15) "bepalen van marker proteïne Ki-67 voor snelle celproliferatie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-16) "Type tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-17) "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-18) "DNA mismatch repair eiwit PMS2"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-19) "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-20) "DNA mismatch repair eiwit MSH2"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-21) "Mesenteriale massa aanwezig"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-22) "Lengte preparaat"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-23) "Poliep(en)"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-24) "aantal slijmvliesbiopten"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-25) "plaats van primaire tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-26) "grootste lengte van tumor in preparaat verkregen door resectie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-27) "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-28) "status van invasie van tumor in bloedvat"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-29) "immunohistochemische verrichting"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-30) "Respons op eerdere therapie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-31) "Mitosen per 2mm2"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-32) "status van intactheid van preparaat verkregen door resectie van mesocolon"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-33) "tumor in anamnese"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-34) "histologische graad van neuro-endocrien neoplasma"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-35) "zegelringcelcarcinoom"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-36) "Tumor budding"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-37) "Perforatie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-38) "afstand van tumor tot proximaal snijvlak in biopt"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-39) "Retroperitoneaal klievingsvlak/radiaire snijvlak"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-40) "Lokalisatie dichtstbijzijnde darmsnijvlak"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-41) "terugkerende tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-42) "status van ingroei van tumor rondom zenuw"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-43) "aanwezigheid van neoplasma op het mesenteriale snijvlak in in preparaat van weefsel verkregen door excisie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-44) "grootste lengte van tumor in preparaat verkregen door resectie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-45) "Proximaal darmsnijvlak"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-46) "Distaal darmsnijvlak"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-47) "moleculaire diagnostiek"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-48) "Diepste tumordoorgroei"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-49) "Eerdere therapie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-50) "Eerdere therapie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-51) "plaats van primaire tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-52) "status van ingroei van tumor rondom zenuw"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-53) "Lymfocytaire infiltratie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-54) "diagnose"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-55) "Tumor aanwezig"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-56) "aantal tumoren"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-57) "aantal lymfeklieren aangedaan door maligniteit"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-58) "Dichtstbijzijnde darmsnijvlak"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-59) "anatomische locatie van directe invasie door goed gedifferentieerde neuro-endocriene tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-60) "Aspect tumor"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-61) "Onderzoek vermelden als"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-62) "afstand van tumor tot distaal snijvlak in biopt"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-63) "afstand van neoplasma tot dichtstbijzijnde radiaal snijvlak in biopt"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-64) "Histologisch respons op (neo-adjuvante) therapie in de lymfklieren"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-65) "Respons op eerdere therapie"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-66) "diameter van massa"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-67) "Aantal mitosen per 2mm2"
* result[+] = Reference(Pathology-Observation-Smalhart-ProtocolDataItem-68) "percentage celkernen positief voor INSM1 in primair maligne neoplasma volgens immunohistochemie"
* result[clinicalInformation] = Reference(Pathology-Observation-Smalhart-ClinicalInformation) "Klinische gegevens"
* result[macroscopy] = Reference(Pathology-Observation-Smalhart-Macroscopy) "Macroscopie"
* result[microscopy] = Reference(Pathology-Observation-Smalhart-Microscopy) "Microscopie"
* conclusion = "<div>Hemicolectomie rechts, 2 tumoren.</div><div>type 1ste tumor (WHO): zegelringcelcarcinoom; maximale diameter tumor 0,6 cm; lokalisatie: coecum; diepste tumor doorgroei:  submucosa; eerdere neo-adjuvante therapie: chemotherapie en radiotherapie kort, respons op eerdere neo-adjuvante therapie: partiele regressie (pT1).</div><div>Dichtstbijzijnde darmsnijvlak  niet vrij; retroperitoneaal klievingsvlak&#x2F;radiaire snijvlak  vrij (afstand &gt; 0,1 cm &lt; 0,2 cm).</div><div>Angio-invasie: lymfvat invasie en intramurale veneuze invasie.</div><div>Perineurale invasie: aangetroffen.</div><div/><div>type 2de tumor (WHO): neuroendocriene tumor graad 1; maximale diameter tumor 0,7 cm; lokalisatie: ileum; diepste tumordoorgroei (NET) (ileum&#x2F;jejunum):  invasie in muscularis propria; eerdere neo-adjuvante therapie: chemotherapie en radiotherapie kort, respons op eerdere neo-adjuvante therapie: geen regressie (pT2).</div><div>Proximaal darmsnijvlak  vrij (afstand 0,2 cm); distaal darmsnijvlak  vrij (afstand 0,2 cm); Mesenteriaal snijvlak:  niet vrij.</div><div>Angio-invasie: geen lymfvat invasie of extramurale veneuze invasie aangetroffen.</div><div>Perineurale invasie: niet aangetroffen.</div><div/><div>Aantal lymfklieren: 23 waarvan met metastasen: 18. Aantal tumordeposits: 1.</div><div/><div>Histologisch bevestigde metastase(n) in lever.</div><div/><div>TNM classificatie Colon en Rectum (9e editie UICC): rypT1N2b(mi)M1a.</div><div/><div>TNM classificatie Dunne darm GD-NET (9e editie UICC): ypT2N2(mi)M1a.</div><div>Patient is bekend met: MUTYH geassocieerde polyposis (MAP).</div><div/><div>MMR-status: MMR-deficiënt (dMMR), zie specificatie in het protocollair verslag. Advies m.b.t. erfelijkheid: de leeftijd en MMR-deficiëntie is een reden voor nader onderzoek naar aanleg voor Lynch syndroom en daarmee verwijzing naar een klinisch geneticus te overwegen.</div>"

Instance: Pathology-Observation-Smalhart-ClinicalInformation
InstanceOf: PathReportClinicalInformation
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Klinische gegevens</div><div>Zegelringcelcarcinoom bij BVO</div><div>Aard materiaal</div><div>Hemicolectomie</div><div/></div>"
* status = #final
* code = $SCT#404684003 "klinische bevinding"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-Macroscopy
InstanceOf: PathReportMacroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Macroscopie</div><div>Colon resectie met lengte van 30 cm</div><div/></div>"
* status = #final
* code = $SCT#168126000 "Sample macroscopy"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-Microscopy
InstanceOf: PathReportMicroscopy
Usage: #example
* text
  * status = #additional
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN  versie 2017</div><div/><div>Klinische Gegevens en Macroscopie</div><div>Type resectie: hemicolectomie rechts</div><div>Niveau van resectie mesocolon: op de muscularis propria</div><div>Perforatie: niet aanwezig</div><div>Klinisch obstructie / ileus: nee</div><div>Lokalisatie 1ste tumor: coecum</div><div>Aspect 1ste tumor: schotelvormig</div><div>Maximale diameter 1ste tumor: 0,6 cm</div><div>Lokalisatie 2de tumor: ileum</div><div>Aspect 2de tumor: poliepeus</div><div>Maximale diameter 2de tumor: 0,7 cm</div><div>Lengte preparaat: 30 cm</div><div>Tumor aanwezig: ja, 2 tumoren</div><div>Patient is bekend met: MUTYH geassocieerde polyposis (MAP)</div><div>Metastase(n): lever (bevestigd)</div><div>Eerdere (neo-adjuvante) therapie: chemotherapie en radiotherapie kort</div><div/><div>Microscopie 1ste tumor</div><div>Respons op eerdere (neo-adjuvante) therapie: partiele regressie</div><div>Type 1ste tumor (WHO): zegelringcelcarcinoom</div><div>Zegelringcellen: &lt; 10%</div><div>Diepste tumordoorgroei: submucosa</div><div>Angio-invasie: lymfvat invasie en intramurale veneuze invasie</div><div>Angio-invasie opmerking: geen extramurale veneuze invasie aangetroffen</div><div>Tumor budding: intermediair (Bd2)</div><div>Perineurale groei: aangetroffen</div><div>Lymfocytaire infiltratie: ja</div><div>Betreft dit een recidief: ja</div><div/><div>Snijvlakken 1ste tumor</div><div>Dichtstbijzijnde darmsnijvlak: niet vrij</div><div>Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij, &gt; 0,1 cm &lt; 0,2 cm</div><div/><div>Aanvullend onderzoek MMR/MSI 1ste tumor</div><div>MLH1 verlies: nee</div><div>PMS2 verlies: nee</div><div>MSH2 verlies: ja</div><div>MSH6 verlies: nee</div><div/><div>Microscopie 2de tumor</div><div>Respons op eerdere (neo-adjuvante) therapie: geen regressie</div><div>Type tumor 2de (WHO): neuroendocriene tumor graad 1</div><div>Ki-67 index NEN: 1%</div><div>Mitosen per 2mm2: 1</div><div>Diepste tumordoorgroei NET (ileum/jejunum): invasie in muscularis propria</div><div>Angio-invasie: niet aangetroffen</div><div>Angio-invasie opmerking: geen lymfvat invasie, geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen</div><div>Perineurale groei: niet aangetroffen</div><div/><div>Snijvlakken 2de tumor</div><div>Proximaal darmsnijvlak: vrij op 0,2 cm</div><div>Distaal darmsnijvlak: vrij op 0,2 cm</div><div>Mesenteriaal snijvlak: niet vrij</div><div/><div>Lymfklieren</div><div>Aantal lymfklieren: 23</div><div>Aantal lymfklieren met metastasen: 17</div><div>Aantal tumordeposits: 1</div><div>Diameter grootste metastase: &gt; 0,2 mm - &lt;= 2,0 mm</div><div>Aantal lymfklieren met metastasen NET (bij tumor ileum/jejunum): 1</div><div>Diameter grootste metastase NET (bij tumor ileum/jejunum): &gt; 0,2 mm - &lt;= 2,0 mm</div><div>Mesenteriale massa aanwezig: ja</div><div>Diameter mesenteriale massa: 2,1 cm</div><div>Histologisch respons op (neo-adjuvante) therapie  in de lymfklieren: ja</div><div/><div>Overige</div><div>Poliep(en): sessiel serrated laesie zonder dysplasie</div><div>Aantal poliepen: 2</div><div/><div>Moleculaire bepaling</div><div>Mutatie analyse: niet uitgevoerd</div><div/><div>Immunohistochemie</div><div>2e tumor</div><div>Percentage positieve tumorcellen INSM1: 60%</div><div/></div>"
* status = #final
* code = $SCT#117259009 "microscopisch onderzoek"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-1
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#2620001000004108 "Specimen collection procedure"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#359571009 "hemicolectomie rechts"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-2
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#733149001 "obstructie-ileus van dunne darm gelijktijdig met en door impactie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-3
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#385421009 "locatie van metastase op afstand"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#10200004 "lever"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-4
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#399608002 "Status of distant metastasis"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#59156000 "Confirmed by"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-5
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#512001000004108 "Histologic type of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#87737001 "zegelringcelcarcinoom"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-6
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1255078008 "Percent of cell nuclei positive for proliferation marker protein Ki-67 in primary malignant neoplasm by immunohistochemistry"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 1 '%'
  * unit = "%"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-7
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396792003 "Tumor size, largest metastasis, additional dimension"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueRange
  * low = 0.2 'mm'
    * unit = "mm"
  * high = 2.0 'mm'
    * unit = "mm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-8
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#360581000146102 "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-9
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1222735002 "DNA mismatch repair protein Mlh1"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-10
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#512001000004108 "Histologic type of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#571451000146108 "afwijkende schotelvorm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-11
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371512006 "status van invasie van tumor in bloedvat"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#395717001 "ingroei van tumor in lymfevat"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-12
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1890001000004107 "Status of intramural large vessel vascular invasion by primary malignant neoplasm of colon"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#369733002 "intramurale veneuze tumorinvasie aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-13
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#360581000146102 "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-14
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1222739008 "DNA mismatch repair protein Msh6"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-15
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#310731000146105 "bepalen van marker proteïne Ki-67 voor snelle celproliferatie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-16
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#512001000004108 "Histologic type of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#128928004 "neuro-endocrien neoplasma"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-17
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#360581000146102 "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-18
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1000001000004108 "DNA mismatch repair protein PMS2"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-19
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#360581000146102 "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-20
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1222736001 "DNA mismatch repair protein Msh2"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-21
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1287135005 "Presence of neoplasm in mesentery"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-22
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#384606002 "Length of specimen"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 30 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-23
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1286765003 "Histologic type of polyp of colorectum"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#443157008 "sessiel gekarteld adenoom"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-24
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#310991000146109 "aantal slijmvliesbiopten"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity
  * value = 2
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-25
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#399687005 "plaats van primaire tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#34516001 "ileum"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-26
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#120001000004108 "grootste lengte van tumor in preparaat verkregen door resectie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 0.6 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-27
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#360581000146102 "vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-28
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371512006 "status van invasie van tumor in bloedvat"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-29
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#117617002 "immunohistochemische verrichting"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-30
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1255588004 "Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#1285141002 "gedeeltelijke tumorrespons op antineoplastische neoadjuvante behandeling"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-31
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#27350008 "Mitotic index"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385658003 "uitgevoerd"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-32
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#450431000146104 "status van intactheid van preparaat verkregen door resectie van mesocolon"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#255599008 "onvolledig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-33
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#275904003 "tumor in anamnese"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-34
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#490401000146101 "histologische graad van neuro-endocrien neoplasma"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#258351006 "Grade 1"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-35
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#87737001 "zegelringcelcarcinoom"
* subject = Reference(Pathology-Patient-Olivander) "G. Olivander"
* valueQuantity = 10 '%'
  * comparator = #<
  * unit = "%"
* specimen = Reference(Pathology-Specimen-Olivander) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-36
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1286754008 "Tumor bud score in primary malignant neoplasm of colorectum"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#11896004 "tussenliggend"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-37
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1300184003 "Presence of macroscopic perforation of colorectum by primary malignant neoplasm of colorectum"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-38
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#521201000146107 "afstand van tumor tot proximaal snijvlak in biopt"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 0.2 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-39
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1359839002 "Status of surgical radial margin involvement by tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-40
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371491000 "Margin closest to tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#40415009 "proximaal"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-41
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#25173007 "terugkerende tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-42
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371513001 "status van ingroei van tumor rondom zenuw"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#2667000 "niet aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-43
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#521221000146104 "aanwezigheid van neoplasma op het mesenteriale snijvlak in in preparaat van weefsel verkregen door excisie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-44
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#120001000004108 "grootste lengte van tumor in preparaat verkregen door resectie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 0.7 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-45
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#372439002 "Status of proximal surgical margin tumor involvement"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-46
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#372440000 "Status of distal surgical margin tumor involvement"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#47492008 "niet gezien"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-47
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396927009 "moleculaire diagnostiek"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#385660001 "niet verricht"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-48
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#384962004 "Anatomic location directly invaded by primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#68439008 "submucosa"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-49
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1279827005 "Neoadjuvant antineoplastic therapy procedure prior to surgery"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#1255831008 "chemotherapie met gerichte medicatie tegen maligne tumor"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-50
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1279827005 "Neoadjuvant antineoplastic therapy procedure prior to surgery"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#310641000146109 "kortdurende radiotherapie"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-51
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#399687005 "plaats van primaire tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#32713005 "blindedarm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-52
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371513001 "status van ingroei van tumor rondom zenuw"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-53
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#396395003 "Status of tumor infiltration by lymphocytes"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-54
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#439401001 "diagnose"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#423471004 "MYH-polyposis"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-55
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1597451000004100 "Primary tumor site extension"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-56
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#246214002 "aantal tumoren"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity
  * value = 2
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-57
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#443527007 "aantal lymfeklieren aangedaan door maligniteit"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity
  * value = 23
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-58
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#371491000 "Margin closest to tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-59
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#450291000146104 "anatomische locatie van directe invasie door goed gedifferentieerde neuro-endocriene tumor"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#86915006 "muscularis propria"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-60
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#512001000004108 "Histologic type of primary malignant neoplasm"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#103680002 "gesteelde poliep"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-61
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#423901009 "Identification code"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueString = "1e tumor"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-62
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#521211000146109 "afstand van tumor tot distaal snijvlak in biopt"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 0.2 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-63
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#450461000146108 "afstand van neoplasma tot dichtstbijzijnde radiaal snijvlak in biopt "
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueRange
  * low = 0.1 'cm'
    * unit = "cm"
  * high = 0.2 'cm'
    * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-64
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1255588004 "Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#52101004 "aanwezig"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-65
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#1255588004 "Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueCodeableConcept = $SCT#1285417007 "geen respons van neoplasma op antineoplastische neoadjuvante therapie"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-66
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#248530000 "diameter van massa"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 2.1 'cm'
  * unit = "cm"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-67
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#405920001 "Mitotic count score per 10 high power fields, 40x objective"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity
  * value = 1
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Observation-Smalhart-ProtocolDataItem-68
InstanceOf: PathReportProtocolDataItem
Usage: #example
* status = #final
* code = $SCT#521251000146108 "percentage celkernen positief voor INSM1 in primair maligne neoplasma volgens immunohistochemie"
* subject = Reference(Pathology-Patient-Smalhart) "G. Smalhart"
* valueQuantity = 60 '%'
  * unit = "%"
* specimen = Reference(Pathology-Specimen-Smalhart) "Colon Resectie"

Instance: Pathology-Patient-Smalhart
InstanceOf: PathPatient
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
* extension[http://hl7.org/fhir/StructureDefinition/patient-birthPlace]
  * valueAddress
    * city = "Dublin"
    * country = "Ierland"
* identifier
  * system = $BSN
  * value.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked
* name[nameInformation]
  * use = #official
  * text = "G. Smalhart"
  * family = "Smalhart"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name].valueString = "Smalhart"
  * given = "G."
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier].valueCode = #IN
* gender = #male
* birthDate = "1964-01-26"
* address
  * line = "Kwijtweg 123"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName].valueString = "Kwijtweg"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber].valueString = "123"
  * city = "Londen"
  * postalCode = "1122 XY"

Instance: Pathology-PractitionerRole-Wachtel
InstanceOf: PathRequestRequester
Usage: #example
* meta
  * profile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
* practitioner = Reference(Pathology-Practitioner-Wachtel) "Z. Wachtel"
* organization = Reference(Pathology-Organization-Holisto) "St. Holisto's Hospitaal"
* specialty[specialty] = $VektisAGB#0313 "Interne geneeskunde"
* location = Reference(Pathology-Location-Holisto-Polikliniek-Interne-Geneeskunde) "St. Holisto's Hospitaal, Polikliniek Interne geneeskunde"

Instance: Pathology-PractitionerRole-Tholoog
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Usage: #example
* practitioner = Reference(Pathology-Practitioner-Tholoog) "P.A. Tholoog"
* organization = Reference(Pathology-Organization-Holisto) "St. Holisto's Hospitaal"
* specialty[specialty] = $VektisAGB#0388 "Medisch specialisten, pathologische anatomie"

Instance: Pathology-Practitioner-Wachtel
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* name[nameInformation]
  * use = #official
  * text = "Z. Wachtel"

Instance: Pathology-Practitioner-Tholoog
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Usage: #example
* name[nameInformation]
  * use = #official
  * text = "P.A. Tholoog"

Instance: Pathology-Organization-Holisto
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization
Usage: #example
* name = "St. Holisto's Hospitaal"

Instance: Pathology-Location-Holisto-Polikliniek-Interne-Geneeskunde
InstanceOf: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider
Usage: #example
* name = "Polikliniek Interne geneeskunde"
* managingOrganization = Reference(Pathology-Organization-Holisto) "St. Holisto's Hospitaal"