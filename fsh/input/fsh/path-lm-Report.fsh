// Logical Model for Report

Logical: PathLmReport
Parent: http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-Base
Id: path-lm-Report
Title: "Report"
Description: "Pathology report which contains the findings and interpretation of a pathology study."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $PathLmReportOID
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Report Clinical Information Model (CIM) for patient use cases in the context of Pathology."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Verslag"
* IdentificationNumber 1..1
  * ^short = "Report identifier"
  * ^definition = "Identifier of the pathology report assigned by the laboratory doing the analysis."
  * ^alias = "VerslagIdentificatienummer"
  * ^comment = "This concept is often referred to as ReportIdentifier.\n\nThis identifier attains a value of the form _[TCSB]YY-nnnnn_ or _[TCSB]YY-nnnnnn_ (based on the laboratory the report originates from), e.g. T26-012345."
* Patient only Reference(PathLmPatient)
* HealthcareProvider 0..0
* Effective[x] 1..1
* EffectiveDateTime 1..1
  * ^short = "Authorization date"
  * ^definition = "Date of authorization."
  * ^alias = "DatumAutorisatie"
  * ^comment = "This concept is often referred to as AuthorizationDate.\n\nEven though this element has data type dateTime, in practice only dates (without time) will be conveyed."
* EffectivePeriod 0..0
* CareType 1..*
  * ^comment = "At least code _0388_ ('Medisch specialisten, pathologische anatomie') SHALL be conveyed as care type."
* Authorizer 1..1 string "Authorizer" "Name of the pathologist who has authorized the report."
  * ^alias = "Autorisator"
* ClinicalInformation 0..1 string "Clinical information" "Clinical information section of the report."
  * ^alias = "KlinischeGegevens"
* Macroscopy 0..1 string "Macroscopy" "Macroscopy-related results."
  * ^alias = "Macroscopie"
* Microscopy 1..1 string "Microscopy" "Microscopy-related results."
  * ^alias = "Microscopie"
* Conclusion 1..1 string "Conclusion" "Conclusion of the report."
  * ^alias = "Conclusie"
* ProtocolData 0..* BackboneElement "Protocol data" "Data from National Palga Protocols, created in the Palga Protocol Module."
  * ^alias = "Protocoldata"
  * ProtocolItemName 1..1 CodeableConcept "Protocol item name" "Name of the protocol item, expressed by a SNOMED CT code."
    * ^alias = "ProtocolitemNaam"
  * ProtocolItemResult[x] 1..1 CodeableConcept or string or integer or Quantity or Range or dateTime "Protocol item result" "Result of the protocol item."
    * ^alias = "ProtocolitemResultaat"
  * SampleNumber 0..1 integer "Sample number" "The number of the sample to which this protocol item corresponds."
    * ^alias = "Samplenummer"

Mapping: PathLmReportMercuriusCore
Source: PathLmReport
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* IdentificationNumber -> "mercurius-core-rubriek-3" "rapnaam"
* EffectiveDateTime -> "mercurius-core-rubriek-44" "datumautorisatie"
* Authorizer -> "mercurius-core-rubriek-41" "autorisator"
* ClinicalInformation -> "mercurius-core-rubriek-142" "klinischegegevens"
* Macroscopy -> "mercurius-core-rubriek-184" "macroscopie"
* Microscopy -> "mercurius-core-rubriek-222" "microscopie"
* Conclusion -> "mercurius-core-rubriek-224" "conclusie"
* ProtocolData -> "mercurius-core-rubriek-308" "protocoldata"

Mapping: PathLmReportMedMij-100-alpha3
Source: PathLmReport
Id: path-dataset-100-alpha3-20260923
Title: "Dataset Pathologie MedMij 1.0.0-alpha.3 20260923"
* . -> "path-dataelement-10" "Report"
* ProtocolData
  * ProtocolItemName -> "path-dataelement-11" "ProtocolItemName"
  * ProtocolItemResult[x] -> "path-dataelement-12" "ProtocolItemResult[x]"
  * SampleNumber -> "path-dataelement-13" "SampleNumber"

Mapping: PathLmReportSNOMED
Source: PathLmReport
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* ClinicalInformation -> "404684003" "klinische bevinding"
* Macroscopy -> "168126000" "Sample macroscopy"
* Microscopy -> "117259009" "microscopisch onderzoek"

Mapping: PathLmReportEHDSImagingReport
Source: PathLmReport
Target: "https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSImagingReport.html"
Id: ehds-imagingreport-v1.0.0
Title: "EHDS ImagingReport v1.0.0"
* . -> "EHDSImagingReport" "EHDSImagingReport"
* IdentificationNumber -> "EHDSImagingReport.header.identifier" "identifier"
* Patient -> "EHDSImagingReport.header.subject" "subject"
* EffectiveDateTime -> "EHDSImagingReport.header.date" "date"
* CareType -> "EHDSImagingReport.header.serviceSpecialty" "serviceSpecialty"
* Authorizer -> "EHDSImagingReport.header.authorEHDSHealthProfessional" "authorEHDSHealthProfessional (implicit, actual mapping is on authorEHDSHealthProfessional.name)"
* ClinicalInformation -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.valueString)"
* Macroscopy -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.valueString)"
* Microscopy -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.valueString)"
* Conclusion -> "EHDSImagingReport.body.examinationReport.conclusion.impression" "impression"
* ProtocolData -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.value)"