# {{page-title}}

## 1.0.0-alpha.3

| Component             | Description  | Ticket    |
| --------------------- | ------------ | --------- |
| Data set              | The Patient Logical Model defined in MedMij Core has been used as base definition of the pathology-specific Patient Logical Model. In particular, the ValueSet bound to the Gender concept has been aligned with the terminology used in the zib, and a ConceptMap has been added to translate the Mercurius terminology to the terminology used in the zib. | [MC-6](https://medmij.atlassian.net/browse/MC-6), [PG-557](https://medmij.atlassian.net/browse/PG-557) |
| Dataset               | The integer and Range data types have been added to the ProtocolItemResult concept in the Report Logical Model. | [PG-535](https://medmij.atlassian.net/browse/PG-535) |
| Dataset               | The data types of the SpecimenMaterial and CollectionMethod concepts in the Request Logical Model have been changed to CodeableConcept. | [PG-526](https://medmij.atlassian.net/browse/PG-526) |
| Dataset               | New ids have been assigned to the concepts in the Logical Models that did not yet have ids assigned to them based on the Mercurius dataset. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| Data set              | The Base Logical Model has been used as base definition of the Report and Request Logical Models. In particular, the ReportIdentifier and AuthorizationDate concepts in the Report Logical Model have been 'replaced' by the IdentificationNumber and EffectiveDateTime concepts from the Base Logical Model. | [MC-6](https://medmij.atlassian.net/browse/MC-6), [PG-557](https://medmij.atlassian.net/browse/PG-557) |
| Dataset               | The RequestIdentifier, SpecimenIdentifier, Sample and SampleNumber concepts have been added to the Request Logical Model, while the NumberOfSamples concept has been removed. | [PG-518](https://medmij.atlassian.net/browse/PG-518) |
| Dataset               | In the Report and Request Logical Models, mappings to the EHDS Logical Information Models have been added (mainly the [Imaging report](https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSImagingReport.html) and [Specimen](https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSSpecimen.html) models). | [PG-518](https://medmij.atlassian.net/browse/PG-518) |
| Functional design     | The newly introduced concept ids in the Logical Models have been added in the display guideline. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| Technical design      | A requirement with respect to the care type has been added. | [PG-530](https://medmij.atlassian.net/browse/PG-530) |
| FHIR artifacts        | The path-Patient profile has been aligned with the updated Patient Logical Model. In particular, the ConceptMap referenced on `.gender` to translate the Mercurius terminology to the terminology used in FHIR has been removed, as the former is not used in the Logical Model anymore. | [MC-6](https://medmij.atlassian.net/browse/MC-6), [PG-557](https://medmij.atlassian.net/browse/PG-557) |
| FHIR artifacts        | The integer and Range data types have been added to `.value[x]` in the path-Report.ProtocolDataItem profile. | [PG-535](https://medmij.atlassian.net/browse/PG-535) |
| FHIR artifacts        | Mappings have been added in the FHIR profiles based on the newly introduced concept ids in the Logical Models. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| FHIR artifacts        | In the path-Request profile, a new ValueSet has been introduced to convey the HealthScreeningType concept, based on SNOMED CT codes as much as possible. Moreover, a ConceptMap has been added to translate the Mercurius terminology to SNOMED CT. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| FHIR artifacts        | In the path-Request.Specimen profile, the mappings of SpecimenMaterial and CollectionMethod have been moved from `.type.text` and `.collection.method.text` to `.type` and `.collection.method`, respectively, and SNOMED CT patterns have been specified on `.type.coding.system` and `.collection.method.coding.system`. Moreover, the cardinality of `.collection.method.text` has been changed from `0..1` to `1..1`. | [PG-526](https://medmij.atlassian.net/browse/PG-526) |
| FHIR artifacts        | In all FHIR profiles corresponding to the Report and Request Logical Models, mappings to concepts from the Base Logical Model have been added. Moreover, in all these profiles a slice for care type with cardinality `1..*` has been added on `.meta.tag`, and the cardinality of `.identifier` in the path-Request profile has been changed from `0..*` to `1..*`. | [MC-6](https://medmij.atlassian.net/browse/MC-6), [PG-557](https://medmij.atlassian.net/browse/PG-557) |
| FHIR artifacts        | The RequestIdentifier and SpecimenIdentifier concepts have been mapped to `.identifier` in the path-Request and path-Request.Specimen profiles, respectively. Moreover, the SampleNumber concept has been (implicitly) mapped to `.identifier` in the path-Request.Specimen profile. The cardinality of `.identifier` in the path-Request.Specimen profile has been changed from `0..*` to `1..*.`. | [PG-518](https://medmij.atlassian.net/browse/PG-518) |
| FHIR artifacts        | The guidance on the NumberOfSamples concept has been removed from the path-Report and path-Request profiles. | [PG-518](https://medmij.atlassian.net/browse/PG-518) |
| FHIR artifacts        | In all Observation profiles referenced on `.result` in the path-Report profile, the AuthorizationDate concept has been mapped on `.effectiveDateTime` and the cardinality of this element has been changed from `0..1` to `1..1`. | [PG-518](https://medmij.atlassian.net/browse/PG-518) |
| FHIR artifacts        | The ConceptMaps have been indicated to be bidirectional. | [PG-554](https://medmij.atlassian.net/browse/PG-554) |
| FHIR artifacts        | A dependency on version 1.1.0 of MedMij R4 Core has been added. | [PG-530](https://medmij.atlassian.net/browse/PG-530) |
| FHIR artifacts        | The CapabilityStatements have been added to the Artifact index. | [PG-558](https://medmij.atlassian.net/browse/PG-558) |
| FHIR artifacts        | The ConceptMap MercuriusGender_to_AdministrativeGender has been removed, and the ConceptMap MercuriusGender_to_GeslachtCodelijst has been added. | [MC-6](https://medmij.atlassian.net/browse/MC-6), [PG-557](https://medmij.atlassian.net/browse/PG-557) |
| FHIR artifacts        | The terminology resources (CodeSystems, ValueSets and ConceptMaps) have been added to the Artifact index. | [PG-557](https://medmij.atlassian.net/browse/PG-557) |
| Test material         | A third test scenario has been added, and the protocol data of the first test scenario has been extended. | [PG-535](https://medmij.atlassian.net/browse/PG-535) |
| Test material         | In some test scenarios, the values of the SpecimenMaterial and CollectionMethod concepts have been changed to reflect the case in which translation to a SNOMED CT code is possible. | [PG-526](https://medmij.atlassian.net/browse/PG-526) |
| Test material         | The `.meta.tag`s corresponding to the care type have been added to all test instances. | [PG-530](https://medmij.atlassian.net/browse/PG-530) |
| Test material         | Narratives have been added to all test instances. | [PG-525](https://medmij.atlassian.net/browse/PG-525) |
| Test material         | The RequestIdentifier, SpecimenIdentifier, Sample and SampleNumber concepts have been specified in the test material, while the NumberOfSamples concept has been removed. | [MC-6](https://medmij.atlassian.net/browse/MC-6), [PG-518](https://medmij.atlassian.net/browse/PG-518), [PG-557](https://medmij.atlassian.net/browse/PG-557) |

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