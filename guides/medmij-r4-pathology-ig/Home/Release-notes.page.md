# {{page-title}}

## 1.0.0-alpha.3

| Component             | Description  | Ticket    |
| --------------------- | ------------ | --------- |
| Dataset               | The integer and Range data types have been added to the ProtocolItemResult concept in the Report Logical Model. | [PG-535](https://medmij.atlassian.net/browse/PG-535) |
| Dataset               | The data types of the SpecimenMaterial and CollectionMethod concepts in the Request Logical Model have been changed to CodeableConcept. | [PG-526](https://medmij.atlassian.net/browse/PG-526) |
| Dataset               | New ids have been assigned to the concepts in the Logical Models that did not yet have ids assigned to them based on the Mercurius dataset. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| Functional design     | The newly introduced concept ids in the Logical Models have been added in the display guideline. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| Technical design      | A requirement with respect to the care type has been added. | [PG-530](https://medmij.atlassian.net/browse/PG-530) |
| FHIR artifacts        | The integer and Range data types have been added to `.value[x]` in the path-Report.ProtocolDataItem profile. | [PG-535](https://medmij.atlassian.net/browse/PG-535) |
| FHIR artifacts        | Mappings have been added in the FHIR profiles based on the newly introduced concept ids in the Logical Models. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| FHIR artifacts        | In the path-Request profile, a new ValueSet has been introduced to convey the HealthScreeningType concept, based on SNOMED CT codes as much as possible. Moreover, a ConceptMap has been added to translate the Mercurius terminology to SNOMED CT. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| FHIR artifacts        | In the path-Request profile, the mappings of SpecimenMaterial and CollectionMethod have been moved from `.type.text` and `.collection.method.text` to `.type` and `.collection.method`, respectively, and SNOMED CT patterns have been specified on `.type.coding.system` and `.collection.method.coding.system`. Moreover, the cardinality of `.collection.method.text` has been changed from `0..1` to `1..1`. | [PG-526](https://medmij.atlassian.net/browse/PG-526) |
| FHIR artifacts        | The ConceptMaps have been indicated to be bidirectional. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| FHIR artifacts        | A dependency on version 1.1.0 of MedMij R4 Core has been added. | [PG-530](https://medmij.atlassian.net/browse/PG-530) |
| FHIR artifacts        | The CapabilityStatements have been added to the Artifact index. | [PG-558](https://medmij.atlassian.net/browse/PG-558) |
| Test material         | A third test scenario has been added, and the protocol data of the first test scenario has been extended. | [PG-535](https://medmij.atlassian.net/browse/PG-535) |
| Test material         | In some test scenarios, the values of the SpecimenMaterial and CollectionMethod concepts have been changed to reflect the case in which translation to a SNOMED CT code is possible. | [PG-526](https://medmij.atlassian.net/browse/PG-526) |
| Test material         | The `.meta.tag`s corresponding to the care type have been added to all test instances. | [PG-530](https://medmij.atlassian.net/browse/PG-530) |

## 1.0.0-alpha.2

| Component             | Description  | Ticket    |
| --------------------- | ------------ | --------- |
| Dataset               | The SampleNumber concept has been added to the ProtocolData in the Report Logical Model. | [PG-485](https://medmij.atlassian.net/browse/PG-485) |
| Dataset               | SNOMED CT and LOINC mappings have been added to the Patient Logical Model. | [PG-528](https://medmij.atlassian.net/browse/PG-528) |
| Functional design     | The display guideline (weergaverichtlijn) has been added to the functional design. | [PG-484](https://medmij.atlassian.net/browse/PG-484) |
| FHIR artifacts        | In the CapabilityStatements, the nl-core-HealthcareProvider profile, as well as the corresponding Location resource, has been added. | [PG-489](https://medmij.atlassian.net/browse/PG-489) |
| FHIR artifacts        | The system roles mentioned in the CapabilityStatements have been corrected. | [PG-486](https://medmij.atlassian.net/browse/PG-486) |
| FHIR artifacts        | A data type profile on Identifier has been added for the ReportIdentifier concept, and the constraint on the `.identifier.system` in the path-Report profile has been corrected. | [PG-487](https://medmij.atlassian.net/browse/PG-487) |
| FHIR artifacts        | In the path-Report profile, the slicing on `.result` has been corrected by removing the `protocolData` slice and changing the discriminator. | [PG-516](https://medmij.atlassian.net/browse/PG-516) |
| FHIR artifacts        | For each Logical Model and FHIR profile, the mappings have been added in the IG. Moreover, for each FHIR profile, (links to) the corresponding examples have been added in the IG. | [PG-528](https://medmij.atlassian.net/browse/PG-528) |
| Test material         | The SampleNumber concept has been specified in the test material. | [PG-485](https://medmij.atlassian.net/browse/PG-485) |
| Test material         | Several displays of SNOMED CT codes present in the test material have been updated. | [PG-490](https://medmij.atlassian.net/browse/PG-490) |

## 1.0.0-alpha.1

Initial version, intended for a Proof of Concept (PoC).