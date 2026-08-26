# Scenario 3

## Patient data

| | |
| --- | --- |
| Name.Initials | G. |
| Name.FamilyName.Prefix | |
| Name.FamilyName.LastName | Smalhart |
| Gender | Man (code 'm' from code system 'http://medmij.nl/fhir/CodeSystem/MercuriusGender') |
| BirthInformation.BirthDate | 26-01-1964 |
| BirthInformation.BirthPlace | Dublin |
| BirthInformation.BirthCountry | Ierland |
| Address.Street | Kwijtweg |
| Address.HouseNumber | 123 |
| Address.PostalCode | 1122 XY |
| Address.City | Londen |
| PatientIdentificationNumber (not part of the functional data model) | 123456789 |

## Report 1

### Request data

| | |
| --- | --- |
| RequestType | spoed (code 'spoed' from code system 'MercuriusRequestType') |
| HealthScreeningType | Bevolkingsonderzoek (dikke)darmkanker (code '3' from code system 'MercuriusHealthScreeningType') |
| Requester.RequesterName | Z. Wachtel |
| Requester.Specialty | inwendige geneeskunde (code 'inwendige geneeskunde' from code system 'MercuriusSpecialty') |
| Requester.Hospital | St. Holisto's Hospitaal |
| Requester.Location | Polikliniek MDL |
| ClinicalQuestion | Vraagstelling <br/> Classificatie |
| Specimen.SpecimenMaterial | Colon Resectie |
| Specimen.CollectionDate | 11-06-2026 |
| Specimen.ReceivedDate | 13-06-2026 |
| Specimen.CollectionMethod | resectie (code '65801008' from code system 'SNOMED CT') |
| Specimen.NumberOfSamples | 1 |

### Report data

| | |
| --- | --- |
| ReportIdentifier | T26-61237 (in identifier system 'urn:oid:2.16.840.1.113883.2.4.3.23.3.934.1') |
| Authorizer | P.A. Tholoog |
| AuthorizationDate | 14-06-2026 |
| ClinicalInformation | Klinische gegevens <br/> Zegelringcelcarcinoom bij BVO <br/> <br/> Aard materiaal <br/> Hemicolectomie |
| Macroscopy | Macroscopie <br/> Colon resectie met lengte van 30 cm |
| Microscopy | Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN  versie 2017 <br/> <br/> Klinische Gegevens en Macroscopie <br/> Type resectie: hemicolectomie rechts <br/> Niveau van resectie mesocolon: op de muscularis propria <br/> Perforatie: niet aanwezig <br/> Klinisch obstructie / ileus: nee <br/> Lokalisatie 1ste tumor: coecum <br/> Aspect 1ste tumor: schotelvormig <br/> Maximale diameter 1ste tumor: 0,6 cm <br/> Lokalisatie 2de tumor: ileum <br/> Aspect 2de tumor: poliepeus <br/> Maximale diameter 2de tumor: 0,7 cm <br/> Lengte preparaat: 30 cm <br/> Tumor aanwezig: ja, 2 tumoren <br/> Patient is bekend met: MUTYH geassocieerde polyposis (MAP) <br/> Metastase(n): lever (bevestigd) <br/> Eerdere (neo-adjuvante) therapie: chemotherapie en radiotherapie kort <br/> <br/> Microscopie 1ste tumor <br/> Respons op eerdere (neo-adjuvante) therapie: partiele regressie <br/> Type 1ste tumor (WHO): zegelringcelcarcinoom <br/> Zegelringcellen: &lt; 10% <br/> Diepste tumordoorgroei: submucosa <br/> Angio-invasie: lymfvat invasie en intramurale veneuze invasie <br/> Angio-invasie opmerking: geen extramurale veneuze invasie aangetroffen <br/> Tumor budding: intermediair (Bd2) <br/> Perineurale groei: aangetroffen <br/> Lymfocytaire infiltratie: ja <br/> Betreft dit een recidief: ja <br/> <br/> Snijvlakken 1ste tumor <br/> Dichtstbijzijnde darmsnijvlak: niet vrij <br/> Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij, &gt; 0,1 cm &lt; 0,2 cm <br/> <br/> Aanvullend onderzoek MMR/MSI 1ste tumor <br/> MLH1 verlies: nee <br/> PMS2 verlies: nee <br/> MSH2 verlies: ja <br/> MSH6 verlies: nee <br/> <br/> Microscopie 2de tumor <br/> Respons op eerdere (neo-adjuvante) therapie: geen regressie <br/> Type tumor 2de (WHO): neuroendocriene tumor graad 1 <br/> Ki-67 index NEN: 1% <br/> Mitosen per 2mm2: 1 <br/> Diepste tumordoorgroei NET (ileum/jejunum): invasie in muscularis propria <br/> Angio-invasie: niet aangetroffen <br/> Angio-invasie opmerking: geen lymfvat invasie, geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen <br/> Perineurale groei: niet aangetroffen <br/> <br/> Snijvlakken 2de tumor <br/> Proximaal darmsnijvlak: vrij op 0,2 cm <br/> Distaal darmsnijvlak: vrij op 0,2 cm <br/> Mesenteriaal snijvlak: niet vrij <br/> <br/> Lymfklieren <br/> Aantal lymfklieren: 23 <br/> Aantal lymfklieren met metastasen: 17 <br/> Aantal tumordeposits: 1 <br/> Diameter grootste metastase: &gt; 0,2 mm - &lt;= 2,0 mm <br/> Aantal lymfklieren met metastasen NET (bij tumor ileum/jejunum): 1 <br/> Diameter grootste metastase NET (bij tumor ileum/jejunum): &gt; 0,2 mm - &lt;= 2,0 mm <br/> Mesenteriale massa aanwezig: ja <br/> Diameter mesenteriale massa: 2,1 cm <br/> Histologisch respons op (neo-adjuvante) therapie  in de lymfklieren: ja <br/> <br/> Overige <br/> Poliep(en): sessiel serrated laesie zonder dysplasie <br/> Aantal poliepen: 2 <br/> <br/> Moleculaire bepaling <br/> Mutatie analyse: niet uitgevoerd <br/> <br/> Immunohistochemie <br/> 2e tumor <br/> Percentage positieve tumorcellen INSM1: 60% |
| Conlusion | Hemicolectomie rechts, 2 tumoren. <br/> type 1ste tumor (WHO): zegelringcelcarcinoom; maximale diameter tumor 0,6 cm; lokalisatie: coecum; diepste tumor doorgroei:  submucosa; eerdere neo-adjuvante therapie: chemotherapie en radiotherapie kort, respons op eerdere neo-adjuvante therapie: partiele regressie (pT1). <br/> Dichtstbijzijnde darmsnijvlak  niet vrij; retroperitoneaal klievingsvlak&#x2F;radiaire snijvlak  vrij (afstand &gt; 0,1 cm &lt; 0,2 cm). <br/> Angio-invasie: lymfvat invasie en intramurale veneuze invasie. <br/> Perineurale invasie: aangetroffen. <br/> <br/> type 2de tumor (WHO): neuroendocriene tumor graad 1; maximale diameter tumor 0,7 cm; lokalisatie: ileum; diepste tumordoorgroei (NET) (ileum&#x2F;jejunum):  invasie in muscularis propria; eerdere neo-adjuvante therapie: chemotherapie en radiotherapie kort, respons op eerdere neo-adjuvante therapie: geen regressie (pT2). <br/> Proximaal darmsnijvlak  vrij (afstand 0,2 cm); distaal darmsnijvlak  vrij (afstand 0,2 cm); Mesenteriaal snijvlak:  niet vrij. <br/> Angio-invasie: geen lymfvat invasie of extramurale veneuze invasie aangetroffen. <br/> Perineurale invasie: niet aangetroffen. <br/> <br/> Aantal lymfklieren: 23 waarvan met metastasen: 18. Aantal tumordeposits: 1. <br/> <br/> Histologisch bevestigde metastase(n) in lever. <br/> <br/> TNM classificatie Colon en Rectum (9e editie UICC): rypT1N2b(mi)M1a. <br/> <br/> TNM classificatie Dunne darm GD-NET (9e editie UICC): ypT2N2(mi)M1a. <br/> Patient is bekend met: MUTYH geassocieerde polyposis (MAP). <br/> <br/> MMR-status: MMR-deficiënt (dMMR), zie specificatie in het protocollair verslag. Advies m.b.t. erfelijkheid: de leeftijd en MMR-deficiëntie is een reden voor nader onderzoek naar aanleg voor Lynch syndroom en daarmee verwijzing naar een klinisch geneticus te overwegen. |

#### Protocol data

| ProtocolItemName | ProtocolItemResult | SampleNumber |
| --- | --- | --- |
| Type resectie (Specimen collection procedure) (code '2620001000004108' from code system 'SNOMED CT') | hemicolectomie rechts (code '359571009' from code system 'SNOMED CT') | |
| obstructie-ileus van dunne darm gelijktijdig met en door impactie (code '733149001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| locatie van metastase op afstand (code '385421009' from code system 'SNOMED CT') | lever (code '10200004' from code system 'SNOMED CT') | |
| Status metastasen (Status of distant metastasis) (code '399608002' from code system 'SNOMED CT') | bevestigd (Confirmed by) (code '59156000' from code system 'SNOMED CT') | |
| Type tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | zegelringcelcarcinoom (code '87737001' from code system 'SNOMED CT') | |
| Ki-67 index NEN (Percent of cell nuclei positive for proliferation marker protein Ki-67 in primary malignant neoplasm by immunohistochemistry) (code '1255078008' from code system 'SNOMED CT') | 1 % | |
| Diameter grootste metastase NET (bij tumor ileum/jejunum) (Tumor size, largest metastasis, additional dimension) (code '396792003' from code system 'SNOMED CT') | 0,2 mm - 2,0 mm | |
| vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie (code '360581000146102' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| DNA mismatch repair eiwit MLH1 (DNA mismatch repair protein Mlh1) (code '1222735002' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| Aspect tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | afwijkende schotelvorm (code '571451000146108' from code system 'SNOMED CT') | |
| status van invasie van tumor in bloedvat (code '371512006' from code system 'SNOMED CT') | ingroei van tumor in lymfevat (code '395717001' from code system 'SNOMED CT') | |
| Angio-invasie (Status of intramural large vessel vascular invasion by primary malignant neoplasm of colon) (code '1890001000004107' from code system 'SNOMED CT') | intramurale veneuze tumorinvasie aanwezig (code '369733002' from code system 'SNOMED CT') | |
| vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie (code '360581000146102' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| DNA mismatch repair eiwit MSH6 (DNA mismatch repair protein Msh6) (code '1222739008' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| bepalen van marker proteïne Ki-67 voor snelle celproliferatie (code '310731000146105' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| Type tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | neuro-endocrien neoplasma (code '128928004' from code system 'SNOMED CT') | |
| vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie (code '360581000146102' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| DNA mismatch repair eiwit PMS2 (DNA mismatch repair protein PMS2) (code '1000001000004108' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie (code '360581000146102' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| DNA mismatch repair eiwit MSH2 (DNA mismatch repair protein Msh2) (code '1222736001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| Mesenteriale massa aanwezig (Presence of neoplasm in mesentery) (code '1287135005' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| Lengte preparaat (Length of specimen) (code '384606002' from code system 'SNOMED CT') | 30 cm | |
| Poliep(en) (Histologic type of polyp of colorectum) (code '1286765003' from code system 'SNOMED CT') | sessiel gekarteld adenoom (code '443157008' from code system 'SNOMED CT') | |
| aantal slijmvliesbiopten (code '310991000146109' from code system 'SNOMED CT') | 2 | |
| plaats van primaire tumor (code '399687005' from code system 'SNOMED CT') | ileum (code '34516001' from code system 'SNOMED CT') | |
| grootste lengte van tumor in preparaat verkregen door resectie (code '120001000004108' from code system 'SNOMED CT') | 0,6 cm | |
| vaststellen DNA mismatch repair eiwit in kwaadaardige tumor met immunohistochemie (code '360581000146102' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| status van invasie van tumor in bloedvat (code '371512006' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| immunohistochemische verrichting (code '117617002' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| Respons op eerdere therapie (Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy) (code '1255588004' from code system 'SNOMED CT') | gedeeltelijke tumorrespons op antineoplastische neoadjuvante behandeling (code '1285141002' from code system 'SNOMED CT') | |
| Mitosen per 2mm2 (Mitotic index) (code '27350008' from code system 'SNOMED CT') | uitgevoerd (code '385658003' from code system 'SNOMED CT') | |
| status van intactheid van preparaat verkregen door resectie van mesocolon (code '450431000146104' from code system 'SNOMED CT') | onvolledig (code '255599008' from code system 'SNOMED CT') | |
| tumor in anamnese (code '275904003' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| histologische graad van neuro-endocrien neoplasma (code '490401000146101' from code system 'SNOMED CT') | graad 1 (Grade 1) (code '258351006' from code system 'SNOMED CT') | |
| zegelringcelcarcinoom (code '87737001' from code system 'SNOMED CT') | < 10% | |
| Tumor budding (Tumor bud score in primary malignant neoplasm of colorectum) (code '1286754008' from code system 'SNOMED CT') | tussenliggend (code '11896004' from code system 'SNOMED CT') | |
| Perforatie (Presence of macroscopic perforation of colorectum by primary malignant neoplasm of colorectum) (code '1300184003' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| afstand van tumor tot proximaal snijvlak in biopt (code '521201000146107' from code system 'SNOMED CT') | 0,2 cm | |
| Retroperitoneaal klievingsvlak/radiaire snijvlak (Status of surgical radial margin involvement by tumor) (code '1359839002' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| Lokalisatie dichtstbijzijnde darmsnijvlak (Margin closest to tumor) (code '371491000' from code system 'SNOMED CT') | proximaal (code '40415009' from code system 'SNOMED CT') | |
| terugkerende tumor (code '25173007' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| status van ingroei van tumor rondom zenuw (code '371513001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| aanwezigheid van neoplasma op het mesenteriale snijvlak in in preparaat van weefsel verkregen door excisie (code '521221000146104' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| grootste lengte van tumor in preparaat verkregen door resectie (code '120001000004108' from code system 'SNOMED CT') | 0,7 cm | |
| Proximaal darmsnijvlak (Status of proximal surgical margin tumor involvement) (code '372439002' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| Distaal darmsnijvlak (Status of distal surgical margin tumor involvement) (code '372440000' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| moleculaire diagnostiek (code '396927009' from code system 'SNOMED CT') | niet verricht (code '385660001' from code system 'SNOMED CT') | |
| Diepste tumordoorgroei (Anatomic location directly invaded by primary malignant neoplasm) (code '384962004' from code system 'SNOMED CT') | submucosa (code '68439008' from code system 'SNOMED CT') | |
| Eerdere therapie (Neoadjuvant antineoplastic therapy procedure prior to surgery) (code '1279827005' from code system 'SNOMED CT') | chemotherapie met gerichte medicatie tegen maligne tumor (code '1255831008' from code system 'SNOMED CT') | |
| Eerdere therapie (Neoadjuvant antineoplastic therapy procedure prior to surgery) (code '1279827005' from code system 'SNOMED CT') | kortdurende radiotherapie (code '310641000146109' from code system 'SNOMED CT') | |
| plaats van primaire tumor (code '399687005' from code system 'SNOMED CT') | blindedarm (code '32713005' from code system 'SNOMED CT') | |
| status van ingroei van tumor rondom zenuw (code '371513001' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| Lymfocytaire infiltratie (Status of tumor infiltration by lymphocytes) (code '396395003' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| diagnose (code '439401001' from code system 'SNOMED CT') | MYH-polyposis (code '423471004' from code system 'SNOMED CT') | |
| Tumor aanwezig (Primary tumor site extension) (code '1597451000004100' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| aantal tumoren (code '246214002' from code system 'SNOMED CT') | 2 | |
| aantal lymfeklieren aangedaan door maligniteit (code '443527007' from code system 'SNOMED CT') | 23 | |
| Dichtstbijzijnde darmsnijvlak (Margin closest to tumor) (code '371491000' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| anatomische locatie van directe invasie door goed gedifferentieerde neuro-endocriene tumor (code '450291000146104' from code system 'SNOMED CT') | muscularis propria (code '86915006' from code system 'SNOMED CT') | |
| Aspect tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | gesteelde poliep (code '103680002' from code system 'SNOMED CT') | |
| Onderzoek vermelden als (Identification code) (code '423901009' from code system 'SNOMED CT') | 1e tumor | |
| afstand van tumor tot distaal snijvlak in biopt (code '521211000146109' from code system 'SNOMED CT') | 0,2 cm | |
| afstand van neoplasma tot dichtstbijzijnde radiaal snijvlak in biopt (code '450461000146108' from code system 'SNOMED CT') | 0,1 cm - 0,2 cm | |
| Histologisch respons op (neo-adjuvante) therapie in de lymfklieren (Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy) (code '1255588004' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| Respons op eerdere therapie (Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy) (code '1255588004' from code system 'SNOMED CT') | geen respons van neoplasma op antineoplastische neoadjuvante therapie (code '1285417007' from code system 'SNOMED CT') | |
| diameter van massa (code '248530000' from code system 'SNOMED CT') | 2,1 cm | |
| Aantal mitosen per 2mm2 (Mitotic count score per 10 high power fields, 40x objective) (code '405920001' from code system 'SNOMED CT') | 1 /2mm2 | |
| percentage celkernen positief voor INSM1 in primair maligne neoplasma volgens immunohistochemie (code '521251000146108' from code system 'SNOMED CT') | 60 % | |

## Report 2

### Request data

| | |
| --- | --- |
| RequestType | |
| HealthScreeningType | |
| Requester.RequesterName | Katara Yi |
| Requester.Specialty | gastro-enterologie (code 'gastro-enterologie' from code system 'MercuriusSpecialty') |
| Requester.Hospital | MUMC |
| Requester.Location | |
| ClinicalQuestion | Zijn er afwijkingen te constateren bij afgenomen weefsel? |
| Specimen.SpecimenMaterial | appendix (code '66754008' from code system 'SNOMED CT') |
| Specimen.CollectionDate | |
| Specimen.ReceivedDate | 01-11-2023 |
| Specimen.CollectionMethod | resectie (code '65801008' from code system 'SNOMED CT') |
| Specimen.NumberOfSamples | 1 |

### Report data

| | |
| --- | --- |
| ReportIdentifier | T24-01916 (in identifier system 'urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1') |
| Authorizer | Albus Beudeker |
| AuthorizationDate | 09-04-2024 |
| ClinicalInformation | Aard materiaal <br/> appendix resectie <br/> <br/> Klinische gegevens <br/> Niet verder gespecificeerd |
| Macroscopy | Macroscopie <br/> Appendix resectie van gebruikelijke lengte |
| Microscopy | Gebaseerd op de richtlijnen Colorectaalcarcinoom versie 10-2019 en Neuro-endocriene tumoren versie 1.0 (2013) <br/> <br/> Microscopie <br/> Type afwijking: (invasieve) tumor <br/> Type tumor (WHO): adenocarcinoom <br/> Differentiatiegraad: goed / matig <br/> Max diameter tumor: 1,2 cm <br/> Diepste tumordoorgroei: invasie beperkt tot lamina propria / mucosa <br/> Angio-invasie: niet aangetroffen <br/> Perineurale groei: niet aangetroffen <br/> Dichtstbijzijnde snijvlak: niet vrij <br/> Aanwezigheid van transmurale ontsteking/inflammatie: nee <br/> Aanwezigheid van necrose van de appendixwand: nee <br/> Perforatie: nee <br/> <br/> Aanvullend onderzoek lynch syndroom <br/> Bepaling mismatch repair eiwitten (MMR): niet verricht <br/> MSI analyse: niet verricht <br/> <br/> Aanvulling microscopie <br/> Nader bekeken |
| Conclusion | Appendectomie: goed / matig gedifferentieerd adenocarcinoom. <br/> Diepste tumordoorgroei: invasie beperkt tot lamina propria / mucosa; dichtstbijzijnde snijvlak niet vrij. <br/> Angio-invasie: niet aangetroffen; Perineurale groei: niet aangetroffen. <br/> TNM classificatie Appendix (8e editie UICC): pTis. <br/> <br/> DIT IS EEN GEWIJZIGDE CONCLUSIE (09-04-2024). <br/> II. <br/> Graad 3. <br/> <br/> Conclusie 1916 |

#### Protocol data

| ProtocolItemName | ProtocolItemResult | SampleNumber |
| --- | --- | --- |
| Type tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | adenocarcinoom (code '1187332001' from code system 'SNOMED CT') | |
| Max diameter tumor (Greatest length dimension of excised primary malignant neoplasm) (code '200001000004104' from code system 'SNOMED CT') | 1,2 cm | |
| Perforatie (Perforation of appendix) (code '1255220008' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| inflammatoire morfologie (code '409774005' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| afsterving (code '6574001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| status van invasie van tumor in bloedvat (code '371512006' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| Dichtstbijzijnde snijvlak (Margin closest to tumor) (code '371491000' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| Diepste tumordoorgroei (Anatomic location directly invaded by primary malignant neoplasm) (code '384962004' from code system 'SNOMED CT') | muscularis propria (code '86915006' from code system 'SNOMED CT') | |
| Diepste tumordoorgroei (Anatomic location directly invaded by primary malignant neoplasm) (code '384962004' from code system 'SNOMED CT') | slijmvlies (code '414781009' from code system 'SNOMED CT') | |
| status van ingroei van tumor rondom zenuw (code '371513001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| Differentiatiegraad (Histologic grade of primary malignant neoplasm) (code '1850001000004102' from code system 'SNOMED CT') | laaggradig (Low histologic grade) (code '1155708003' from code system 'SNOMED CT') | |
| histologisch kenmerk van tumor (code '396984004' from code system 'SNOMED CT') | tumor (code '108369006' from code system 'SNOMED CT') | |