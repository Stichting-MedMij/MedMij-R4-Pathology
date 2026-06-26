# Scenario 1

## Patient data

| | |
| --- | --- |
| Name.Initials | G. |
| Name.FamilyName.Prefix | |
| Name.FamilyName.LastName | Olivander |
| Gender | Man (code 'm' from code system 'http://medmij.nl/fhir/CodeSystem/MercuriusGender') |
| BirthInformation.BirthDate | 25-09-1921 |
| BirthInformation.BirthPlace | Londen |
| BirthInformation.BirthCountry | Groot-Brittanië |
| Address.Street | Diagonaalstraat |
| Address.HouseNumber | 687 |
| Address.PostalCode | 5972 XX |
| Address.City | Londen |
| PatientIdentificationNumber (not part of the functional data model) | 524895478 |

## Request data

| | |
| --- | --- |
| RequestType | normaal (code 'normaal' from code system 'MercuriusRequestType') |
| HealthScreeningType | Geen BVO (code '0' from code system 'MercuriusHealthScreeningType') |
| Requester.RequesterName | P. Plijster |
| Requester.Specialty | gastro-enterologie (code 'gastro-enterologie' from code system 'MercuriusSpecialty') |
| Requester.Hospital | LUMC |
| Requester.Location | Polikliniek MDL |
| ClinicalQuestion | Vraagstelling <br/> Classificatie |
| Specimen.SpecimenMaterial | Colon Resectie |
| Specimen.CollectionDate | 01-02-2026 |
| Specimen.ReceivedDate | 03-02-2026 |
| Specimen.CollectionMethod | resectie |
| Specimen.NumberOfSamples | 1 |

## Report data

| | |
| --- | --- |
| ReportIdentifier | T26-60066 (in identifier system 'urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1') |
| Authorizer | Jan Oosting |
| AuthorizationDate | 03-02-2026 |
| ClinicalInformation | Klinische gegevens <br/> Adenocarcinoom bij BVO <br/> <br/> Aard materiaal <br/> Hemicolectomie |
| Macroscopy | Macroscopie <br/> Colon resectie met lengte van 20 cm |
| Microscopy | Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN versie 2017 <br/> <br/> Klinische Gegevens en Macroscopie <br/> Type resectie: hemicolectomie links <br/> Niveau van resectie mesocolon: in het mesocolische vet <br/> Perforatie: niet aanwezig <br/> Klinisch obstructie / ileus: nee <br/> Lokalisatie tumor: colon descendens <br/> Aspect tumor: schotelvormig <br/> Maximale diameter tumor: 3,0 cm <br/> Lengte preparaat: 20 cm <br/> Ingevroren materiaal aanwezig: nee <br/> Tumor aanwezig: ja, 1 tumor <br/> Patient is bekend met: morbus Crohn <br/> Metastase(n): niet gevonden <br/> Eerdere (neo-adjuvante) therapie: geen <br/> Vriescoupe tumor: niet verricht <br/> <br/> Microscopie <br/> Type tumor (WHO): adenocarcinoom <br/> Differentiatiegraad: goed/matig gedifferentieerd (laaggradig) <br/> Diepste tumordoorgroei: submucosa <br/> Angio-invasie: lymfvat invasie <br/> Angio-invasie opmerking: geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen <br/> Tumor budding: laag (Bd1) <br/> Perineurale groei: niet aangetroffen <br/> Lymfocytaire infiltratie: ja <br/> <br/> Snijvlakken <br/> Dichtstbijzijnde darmsnijvlak: distaal vrij op &gt;= 1 cm <br/> Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij op 0,8 cm <br/> <br/> Lymfklieren <br/> Aantal lymfklieren: 15 <br/> Aantal lymfklieren met metastasen: 0 <br/> Aantal tumordeposits: 0 <br/> <br/> Overige <br/> Poliep(en): niet aanwezig <br/> <br/> Moleculaire bepaling <br/> Mutatie analyse: niet uitgevoerd |
| Conclusion | Hemicolectomie links: type tumor (WHO): goed/matig gedifferentieerd (laaggradig) adenocarcinoom; maximale diameter tumor 3,0 cm; lokalisatie: colon descendens; diepste tumor doorgroei: submucosa. <br/> Dichtstbijzijnde darmsnijvlak vrij (afstand &gt;= 1 cm); retroperitoneaal klievingsvlak/radiaire snijvlak vrij (afstand 0,8 cm). <br/> Angio-invasie: lymfvat invasie. <br/> Perineurale invasie: niet aangetroffen. <br/> Aantal lymfklieren: 15 waarvan met metastasen: 0. <br/> <br/> TNM classificatie Colon en Rectum (9e editie UICC): pT1N0. <br/> Patiënt is bekend met: morbus Crohn. |

### Protocol data

| ProtocolItemName | ProtocolItemResult | SampleNumber |
| --- | --- | --- |
| afstand van neoplasma tot dichtstbijzijnde snijvlak in preparaat van weefsel verkregen door excisie (code '371489008' from code system 'SNOMED CT') | >= 1 cm | |
| Type resectie (Specimen collection procedure) (code '2620001000004108' from code system 'SNOMED CT') | hemicolectomie links (code '82619000' from code system 'SNOMED CT') | |
| status van ingroei van tumor rondom zenuw (code '371513001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| locatie van metastase op afstand (code '385421009' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| status van intactheid van preparaat verkregen door resectie van mesocolon (code '450431000146104' from code system 'SNOMED CT') | bijna volledig (code '1990001000004102' from code system 'SNOMED CT') | |
| maligne tumor in anamnese (code '266987004' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| Differentiatiegraad (Histologic grade of primary malignant neoplasm) (code '1850001000004102' from code system 'SNOMED CT') | laaggradig (Low histologic grade) (code '1155708003' from code system 'SNOMED CT') | |
| Type tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | adenocarcinoom (code '1187332001' from code system 'SNOMED CT') | |
| Tumor budding (Tumor bud score in primary malignant neoplasm of colorectum) (code '1286754008' from code system 'SNOMED CT') | laag (code '62482003' from code system 'SNOMED CT') | |
| Perforatie (Presence of macroscopic perforation of colorectum by primary malignant neoplasm of colorectum) (code '1300184003' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| vriescoupetechniek (code '817011007' from code system 'SNOMED CT') | niet verricht (code '385660001' from code system 'SNOMED CT') | |
| Aspect tumor (Histologic type of primary malignant neoplasm) (code '512001000004108' from code system 'SNOMED CT') | afwijkende schotelvorm (code '571451000146108' from code system 'SNOMED CT') | |
| status van invasie van tumor in bloedvat (code '371512006' from code system 'SNOMED CT') | ingroei van tumor in lymfevat (code '395717001' from code system 'SNOMED CT') | |
| preparaat van vriescoupe van lichaamsweefsel (code '16214131000119104' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| moleculaire diagnostiek (code '396927009' from code system 'SNOMED CT') | niet verricht (code '385660001' from code system 'SNOMED CT') | |
| Lymfocytaire infiltratie (Status of tumor infiltration by lymphocytes) (code '396395003' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| aantal lymfeklieren aangedaan door maligniteit (code '443527007' from code system 'SNOMED CT') | 0 | |
| Aantal tumordeposits (Number of metastatic discontinuous tumor deposits of primary malignant neoplasm of colorectum) (code '1286756005' from code system 'SNOMED CT') | 0 | |
| Lengte preparaat (Length of specimen) (code '384606002' from code system 'SNOMED CT') | 20 cm | |
| Dichtstbijzijnde darmsnijvlak (Margin closest to tumor) (code '371491000' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| afstand van neoplasma tot dichtstbijzijnde radiaal snijvlak in biopt (code '450461000146108' from code system 'SNOMED CT') | 0,8 cm | |
| plaats van primaire tumor (code '399687005' from code system 'SNOMED CT') | colon descendens (code '32622004' from code system 'SNOMED CT') | |
| Tumor aanwezig (Primary tumor site extension) (code '1597451000004100' from code system 'SNOMED CT') | aanwezig (code '52101004' from code system 'SNOMED CT') | |
| aantal tumoren (code '246214002' from code system 'SNOMED CT') | 1 | |
| Diepste tumordoorgroei (Anatomic location directly invaded by primary malignant neoplasm) (code '384962004' from code system 'SNOMED CT') | submucosa (code '68439008' from code system 'SNOMED CT') | |
| Retroperitoneaal klievingsvlak/radiaire snijvlak (Status of surgical radial margin involvement by tumor) (code '1359839002' from code system 'SNOMED CT') | niet gezien (code '47492008' from code system 'SNOMED CT') | |
| diagnose (code '439401001' from code system 'SNOMED CT') | ziekte van Crohn (code '34000006' from code system 'SNOMED CT') | |
| grootste lengte van tumor in preparaat verkregen door resectie (code '120001000004108' from code system 'SNOMED CT') | 3,0 cm | |
| Poliep(en) (Histologic type of polyp of colorectum) (code '1286765003' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |
| aantal onderzochte lymfeklieren (code '444025001' from code system 'SNOMED CT') | 15 | |
| Eerdere (neo-adjuvante) therapie (Neoadjuvant antineoplastic therapy procedure prior to surgery) (code '1279827005' from code system 'SNOMED CT') | geen (code '260413007' from code system 'SNOMED CT') | |
| Lokalisatie dichtstbijzijnde darmsnijvlak (Margin closest to tumor) (code '371491000' from code system 'SNOMED CT') | ver van (code '46053002' from code system 'SNOMED CT') | |
| Onderzoek vermelden als (Identification code) (code '423901009' from code system 'SNOMED CT') | 1e tumor | |
| obstructie-ileus van dunne darm gelijktijdig met en door impactie (code '733149001' from code system 'SNOMED CT') | niet aanwezig (code '2667000' from code system 'SNOMED CT') | |