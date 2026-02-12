# Scenario 1

## Patient data

| Scenario 1 |
| --- | --- |
| Name.Initials | G. |
| Name.FamilyName.Prefix | |
| Name.FamilyName.LastName | Olivander |
| Gender | Man (code 'm' from code system 'http://medmij.nl/fhir/CodeSystem/MercuriusGender') |
| BirthInformation.BirthDate | 25-09-1921 |
| BirthInformation.BirthPlace | |
| BirthInformation.BirthCountry | |
| Address.Street | |
| Address.HouseNumber | |
| Address.PostalCode | |
| Address.City | |
| PatientIdentificationNumber (not part of the functional data model) | 524895478 |

## Request data

| Scenario 1 |
| --- | --- |
| RequestType | normaal (code 'normaal' from code system 'MercuriusRequestType') |
| HealthScreeningType | Geen BVO (code '0' from code system 'MercuriusHealthScreeningType') |
| Requester.RequesterName | TestDoctor |
| Requester.Specialty | |
| Requester.Hospital | LUMC |
| Requester.Location | |
| ClinicalQuestion | <par>Vraagstelling</par><par>Classificatie</par><par/> |
| Specimen.SpecimenMaterial | Colon Resectie |
| Specimen.CollectionDate | |
| Specimen.ReceivedDate | 03-02-2026 |
| Specimen.CollectionMethod | |

## Report data

| Scenario 1 |
| --- | --- |
| ReportIdentifier | T26-60066 (in identifier system 'urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1') |
| Authorizer | Jan Oosting |
| AuthorizationDate | 03-02-2026 |
| ClinicalInformation | <par>Klinische gegevens</par><par>Adnenocarcinoom bij BVO</par><par>Aard materiaal</par><par>Hemicolectomie</par><par/> |
| Macroscopy | <par>Macroscopie</par><par>Colon resectie met lengte van 20 cm</par><par/> |
| Microscopy | <par>Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN  versie 2017</par><par/><par>Klinische Gegevens en Macroscopie</par><par>Type resectie: hemicolectomie links</par><par>Niveau van resectie mesocolon: in het mesocolische vet</par><par>Perforatie: niet aanwezig</par><par>Klinisch obstructie / ileus: nee</par><par>Lokalisatie  tumor: colon descendens</par><par>Aspect  tumor: schotelvormig</par><par>Maximale diameter  tumor: 3,0 cm</par><par>Lengte preparaat: 20 cm</par><par>Ingevroren materiaal aanwezig: nee</par><par>Tumor aanwezig: ja, 1 tumor</par><par>Patient is bekend met: morbus Crohn</par><par>Metastase(n): niet gevonden</par><par>Eerdere (neo-adjuvante) therapie: geen</par><par>Vriescoupe tumor: niet verricht</par><par/><par>Microscopie</par><par>Type  tumor (WHO): adenocarcinoom</par><par>Differentiatiegraad: goed/matig gedifferentieerd (laaggradig)</par><par>Diepste tumordoorgroei: submucosa</par><par>Angio-invasie: lymfvat invasie</par><par>Angio-invasie opmerking: geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen</par><par>Tumor budding: laag (Bd1)</par><par>Perineurale groei: niet aangetroffen</par><par>Lymfocytaire infiltratie: ja</par><par/><par>Snijvlakken</par><par>Dichtstbijzijnde darmsnijvlak: distaal vrij op &gt;= 1 cm</par><par>Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij op 0,8 cm</par><par/><par>Lymfklieren</par><par>Aantal lymfklieren: 15</par><par>Aantal lymfklieren met metastasen: 0</par><par>Aantal tumordeposits: 0</par><par/><par>Overige</par><par>Poliep(en): niet aanwezig</par><par/><par>Moleculaire bepaling</par><par>Mutatie analyse: niet uitgevoerdMicroscopie</par><par/> |
| Conclusion | <par>Hemicolectomie links: type  tumor (WHO):goed/matig gedifferentieerd (laaggradig)   adenocarcinoom; maximale diameter tumor 3,0 cm; lokalisatie: colon descendens; diepste tumor doorgroei:  submucosa.</par><par>Dichtstbijzijnde darmsnijvlak  vrij (afstand &gt;= 1 cm); retroperitoneaal klievingsvlak/radiaire snijvlak  vrij (afstand 0,8 cm).</par><par>Angio-invasie: lymfvat invasie.</par><par>Perineurale invasie: niet aangetroffen.</par><par>Aantal lymfklieren: 15 waarvan met metastasen: 0.</par><par/><par/><par>TNM classificatie Colon en Rectum (9e editie UICC): pT1N0.</par><par>Patient is bekend met: morbus Crohn.</par><par> </par> |

### Protocol data

| ProtocolItemName | ProtocolItemResult |
| --- | --- |
| Afstand tot dichtstbijzijnde darmsnijvlak (code '371489008' from code system 'SNOMED CT') | >= 1 cm |
| Type resectie (code '2620001000004108' from code system 'SNOMED CT') | hemicolectomie links (code '82619000' from code system 'SNOMED CT') |
| Perineurale groei (code '371513001' from code system 'SNOMED CT') | niet aangetroffen (code '2667000' from code system 'SNOMED CT') |
| Tumor aanwezig (code '1597451000004100' from code system 'SNOMED CT') | ja (code '52101004' from code system 'SNOMED CT') |
| Aantal tumoren (code '246214002' from code system 'SNOMED CT') | 1 |