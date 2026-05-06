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
| Requester.Specialty | gastro-enterologie (code 'gastro-enterologie' from code system 'MercuriusSpecialty') |
| Requester.Hospital | LUMC |
| Requester.Location | Polikliniek MDL |
| ClinicalQuestion | Vraagstelling <br/> Afwijkingen? |
| Specimen.SpecimenMaterial | Colon Biopt |
| Specimen.CollectionDate | 25-01-2026 |
| Specimen.ReceivedDate | 26-01-2026 |
| Specimen.CollectionMethod | biopsie |
| Specimen.NumberOfSamples | 2 |

## Report data

| | |
| --- | --- |
| ReportIdentifier | T26-60065 (in identifier system 'urn:oid:2.16.840.1.113883.2.4.3.23.3.3.1') |
| Authorizer | Jan Oosting |
| AuthorizationDate | 03-02-2026 |
| ClinicalInformation | Klinische gegevens <br/> Binnengekomen via BVO, geen klachten <br/> <br/> Aard materiaal <br/> 2 colon biopten |
| Macroscopy | Macroscopie <br/> 1, 2 : biopt, ti ingesloten in 1/A en 2/A |
| Microscopy | Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019 en protocol BVO darmkanker RIVM 10.2 (2022) <br/> <br/> Aantal inzendingen: I-II <br/> <br/> I Type biopt / resectie: 1 slijmvliesbiopt <br/> Lokalisatie: flexura lienalis <br/> Primaire afwijking: tubulair adenoom <br/> Bevinding: met laaggradige dysplasie <br/> <br/> II Type biopt / resectie: 1 slijmvliesbiopt <br/> Lokalisatie: colon descendens <br/> Primaire afwijking: tubulair adenoom <br/> Bevinding: met laaggradige dysplasie |
| Conclusion | I: Slijmvliesbiopt flexura lienalis: tubulair adenoom met laaggradige dysplasie. <br/> II: Slijmvliesbiopt colon descendens: tubulair adenoom met laaggradige dysplasie. |

### Protocol data (general)

| ProtocolItemName | ProtocolItemResult | SampleNumber |
| --- | --- | --- |
| Eerdere therapie (Neoadjuvant antineoplastic therapy procedure prior to surgery) (code '1279827005' from code system 'SNOMED CT') | chemotherapie met gerichte medicatie tegen maligne tumor (code '1255831008' from code system 'SNOMED CT') | |
| Respons op eerdere therapie (Presence of regression of primary malignant neoplasm after neoadjuvant antineoplastic therapy) (code '1255588004' from code system 'SNOMED CT') | gedeeltelijke tumorrespons op antineoplastische neoadjuvante behandeling (code '1285141002' from code system 'SNOMED CT') | |

### Protocol data (sample 1)

| ProtocolItemName | ProtocolItemResult | SampleNumber |
| --- | --- | --- |
| histologisch kenmerk van tumor (code '396984004' from code system 'SNOMED CT') | benigne tubulair adenoom (code '1156654007' from code system 'SNOMED CT') | 1 |
| aantal slijmvliesbiopten (code '310991000146109' from code system 'SNOMED CT') | 1 slijmvliesbiopt | 1 |
| consult (code '11429006' from code system 'SNOMED CT') | geen (Not performed) (code '262008008' from code system 'SNOMED CT') | 1 |
| locatie van primaire tumor (code '399687005' from code system 'SNOMED CT') | flexura lienalis (code '72592005' from code system 'SNOMED CT') | 1 |
| Bevinding (Histologic grade of primary malignant neoplasm) (code '1850001000004102' from code system 'SNOMED CT') | met laaggradige dysplasie (Low histologic grade) (code '1155708003' from code system 'SNOMED CT') | 1 |

### Protocol data (sample 2)

| ProtocolItemName | ProtocolItemResult | SampleNumber |
| --- | --- | --- |
| histologisch kenmerk van tumor (code '396984004' from code system 'SNOMED CT') | benigne tubulair adenoom (code '1156654007' from code system 'SNOMED CT') | 2 |
| aantal slijmvliesbiopten (code '310991000146109' from code system 'SNOMED CT') | 1 slijmvliesbiopt | 2 |
| consult (code '11429006' from code system 'SNOMED CT') | geen (Not performed) (code '262008008' from code system 'SNOMED CT') | 2 |
| locatie van primaire tumor (code '399687005' from code system 'SNOMED CT') | colon descendens (code '32622004' from code system 'SNOMED CT') | 2 |
| Bevinding (Histologic grade of primary malignant neoplasm) (code '1850001000004102' from code system 'SNOMED CT') | met laaggradige dysplasie (Low histologic grade) (code '1155708003' from code system 'SNOMED CT') | 2 |