# Scenario 2

## Patient data

| | |
| --- | --- |
| Name.Initials | L. |
| Name.FamilyName.Prefix | |
| Name.FamilyName.LastName | Rommella |
| Gender | Vrouw (code 'v' from code system 'http://medmij.nl/fhir/CodeSystem/MercuriusGender') |
| BirthInformation.BirthDate | 05-04-1956 |
| BirthInformation.BirthPlace | |
| BirthInformation.BirthCountry | |
| Address.Street | |
| Address.HouseNumber | |
| Address.PostalCode | |
| Address.City | |
| PatientIdentificationNumber (not part of the functional data model) | 018732768 |

## Request data

| | |
| --- | --- |
| RequestType | normaal (code 'normaal' from code system 'MercuriusRequestType') |
| HealthScreeningType | Geen BVO (code '0' from code system 'MercuriusHealthScreeningType') |
| Requester.RequesterName | P. Plijster |
| Requester.Specialty | |
| Requester.Hospital | LUMC |
| Requester.Location | |
| ClinicalQuestion | <par>Vraagstelling</par><par>Afwijkingen?</par><par/> |
| Specimen.SpecimenMaterial | Colon Biopt |
| Specimen.CollectionDate | |
| Specimen.ReceivedDate | 26-01-2026 |
| Specimen.CollectionMethod | |
| Specimen.NumberOfSamples | 2 |

## Report data

| | |
| --- | --- |
| ReportIdentifier | T26-60065 (in identifier system 'urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1') |
| Authorizer | Jan Oosting |
| AuthorizationDate | 03-02-2026 |
| ClinicalInformation | <par>Klinische gegevens</par><par>Binnengekomen via BVO, geen klachten</par><par>Aard materiaal</par><par>2 colon biopten</par><par/> |
| Macroscopy | <par>Macroscopie</par><par>1, 2 : biopt, ti ingesloten in 1/A en 2/A</par><par/> |
| Microscopy | <par>Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019 en protocol BVO darmkanker RIVM 10.2 (2022)</par><par/><par>Aantal inzendingen: I-II</par><par/><par>I  Type biopt / resectie: 1 slijmvliesbiopt</par><par>Lokalisatie: flexura lienalis</par><par>Primaire afwijking: tubulair adenoom</par><par>Bevinding: met laaggradige dysplasie</par><par/><par>II  Type biopt / resectie: 1 slijmvliesbiopt</par><par>Lokalisatie: colon descendens</par><par>Primaire afwijking: tubulair adenoom</par><par>Bevinding: met laaggradige dysplasieMicroscopie</par><par/> |
| Conclusion | <par>I:  Slijmvliesbiopt flexura lienalis: tubulair adenoom met laaggradige dysplasie.</par><par>II:  Slijmvliesbiopt colon descendens: tubulair adenoom met laaggradige dysplasie.</par><par> </par> |

### Protocol data (general)

| ProtocolItemName | ProtocolItemResult |
| --- | --- |
| Eerdere therapie (code '1279827005' from code system 'SNOMED CT') | chemotherapie (code '1255831008' from code system 'SNOMED CT') |
| Respons op eerdere therapie (code '1255588004' from code system 'SNOMED CT') | partiële regressie (code '1285141002' from code system 'SNOMED CT') |

### Protocol data (sample 1)

| ProtocolItemName | ProtocolItemResult |
| --- | --- |
| Primaire afwijking (code '396984004' from code system 'SNOMED CT') | tubulair adenoom (code '1156654007' from code system 'SNOMED CT') |
| Type biopt (code '310991000146109' from code system 'SNOMED CT') | 1 slijmvliesbiopt |
| Consult (code '11429006' from code system 'SNOMED CT') | geen (code '262008008' from code system 'SNOMED CT') |
| Lokalisatie (code '399687005' from code system 'SNOMED CT') | flexura lienalis (code '72592005' from code system 'SNOMED CT') |
| Bevinding (code '1850001000004102' from code system 'SNOMED CT') | met laaggradige dysplasie (code '1155708003' from code system 'SNOMED CT') |

### Protocol data (sample 2)

| ProtocolItemName | ProtocolItemResult |
| --- | --- |
| Primaire afwijking (code '396984004' from code system 'SNOMED CT') | tubulair adenoom (code '1156654007' from code system 'SNOMED CT') |
| Type biopt (code '310991000146109' from code system 'SNOMED CT') | 1 slijmvliesbiopt |
| Consult (code '11429006' from code system 'SNOMED CT') | geen (code '262008008' from code system 'SNOMED CT') |
| Lokalisatie (code '399687005' from code system 'SNOMED CT') | colon descendens (code '32622004' from code system 'SNOMED CT') |
| Bevinding (code '1850001000004102' from code system 'SNOMED CT') | met laaggradige dysplasie (code '1155708003' from code system 'SNOMED CT') |