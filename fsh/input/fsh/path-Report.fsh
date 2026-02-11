// Profile on DiagnosticReport to be used in Pathology

Profile: PathReport
Parent: DiagnosticReport
Id: path-Report
Title: "path Report"
Description: "Pathology report which contains the findings and interpretation of a pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This DiagnosticReport resource represents the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* . obeys path-Report-2
  * ^short = "Report"
  * ^definition = "Pathology report which contains the findings and interpretation of a pathology study."
  * ^alias = "Verslag"
* identifier 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    reportIdentifier 1..1
* identifier[reportIdentifier]
  * ^short = "ReportIdentifier"
  * ^definition = "Identifier of the pathology report assigned by the laboratory doing the analysis."
  * ^comment = "This identifier attains a `.value` of the form _[TCSB]YY-nnnnn_ or _[TCSB]YY-nnnnnn_ (based on the laboratory the report originates from), e.g. T26-012345. The `.system` SHALL be of the form _urn:oid:2.16.840.1.113883.2.4.3.23.3.N.1_ where _N_ is the lab number (i.e. _labid_)."
  * ^alias = "VerslagIdentificatienummer"
  * ^condition = "path-Report-1"
  * system 1..1
    * ^condition = "path-Report-1"
  * value 1..1
* basedOn 1..1
* basedOn only Reference(ServiceRequest or http://medmij.nl/fhir/StructureDefinition/path-Request)
* status
  * ^patternCode = #final
* category 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains
    pathology 1..1
* category[pathology]
  * ^patternCodeableConcept = $SCT#108257001
* code 1..1
  * ^comment = "If the pathology study is of type cytology (which means that the ReportIdentifier (i.e. _rapnaam_, mercurius-core-rubriek-3) starts with either _B_ or _C_, corresponding to cervical cytology and other cytology, respectively), SNOMED code _1348332002_ SHALL be used as `.code`. Likewise, if the study is of type histology (in which case the ReportIdentifier starts with _T_), SNOMED code _252416005_ SHALL be used instead. Studies for which the ReportIdentifier starts with _S_ (i.e. autopsies) are out of scope."
  * coding 1..*
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      cytology 0..1 and
      histology 0..1
  * coding[cytology] 
    * ^patternCoding = $SCT#1348332002
    * ^condition = "path-Report-2"
  * coding[histology]
    * ^patternCoding = $SCT#252416005
    * ^condition = "path-Report-2"
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* effectivePeriod 1..1
  * start 1..1
    * ^short = "ReceivedDate"
    * ^definition = "Date when specimen is received at the laboratory."
    * ^alias = "DatumOntvangst"
  * end 1..1
    * ^short = "AuthorizationDate"
    * ^definition = "Date of authorization."
    * ^alias = "DatumAutorisatie"
* resultsInterpreter 1..1
* resultsInterpreter only Reference(Practitioner or PractitionerRole or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)
  * ^short = "Authorizer"
  * ^definition = "Name of the pathologist who has authorized the report."
  * ^comment = "The actual mapping of the Authorizer concept is on `Practitioner.name[nameInformation].text`."
  * ^alias = "Autorisator"
* specimen 1..1
* specimen only Reference(Specimen or http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen)
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"
* result 1..*
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #open
* result contains
    clinicalInformation 0..1 and
    macroscopy 0..1 and
    microscopy 1..1 and
    protocolData 0..*
* result[clinicalInformation] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.ClinicalInformation)
* result[macroscopy] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.Macroscopy)
* result[microscopy] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.Microscopy)
* result[protocolData] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem)
  * ^short = "ProtocolData"
  * ^definition = "Data from National Palga Protocols, created in the Palga Protocol Module."
  * ^alias = "Protocoldata"
* conclusion 1..1
  * ^short = "Conclusion"
  * ^definition = "Conclusion of the report."
  * ^alias = "Conclusie"

Profile: PathReportClinicalInformation
Parent: Observation
Id: path-Report.ClinicalInformation
Title: "path Report.ClinicalInformation"
Description: "Clinical information section of the report."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Observation resource represents the ClinicalInformation concept from the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* text 1..1
  * status
    * ^patternCode = #additional
  * div
    * ^short = "ClinicalInformation"
    * ^definition = "Clinical information section of the report."
    * ^alias = "KlinischeGegevens"
* status
  * ^patternCode = #final
* code
  * ^patternCodeableConcept = $SCT#404684003
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"

Profile: PathReportMacroscopy
Parent: Observation
Id: path-Report.Macroscopy
Title: "path Report.Macroscopy"
Description: "Macroscopy-related results."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Observation resource represents the Macroscopy concept from the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* text 1..1
  * status
    * ^patternCode = #additional
  * div
    * ^short = "Macroscopy"
    * ^definition = "Macroscopy-related results."
    * ^alias = "Macroscopie"
* status
  * ^patternCode = #final
* code
  * ^patternCodeableConcept = $SCT#168126000
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"

Profile: PathReportMicroscopy
Parent: Observation
Id: path-Report.Microscopy
Title: "path Report.Microscopy"
Description: "Microscopy-related results."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Observation resource represents the Microscopy concept from the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* text 1..1
  * status
    * ^patternCode = #additional
  * div
    * ^short = "Microscopy"
    * ^definition = "Microscopy-related results."
    * ^alias = "Microscopie"
* status
  * ^patternCode = #final
* code
  * ^patternCodeableConcept = $SCT#117259009
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"

Profile: PathReportProtocolDataItem
Parent: Observation
Id: path-Report.ProtocolDataItem
Title: "path Report.ProtocolDataItem"
Description: "Data item from National Palga Protocols, created in the Palga Protocol Module."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Observation resource represents a single item within the ProtocolData concept from the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* status
  * ^patternCode = #final
* code
  * ^short = "ProtocolItemName"
  * ^definition = "Name of the protocol item, expressed by a SNOMED code."
  * ^alias = "ProtocolitemNaam"
  * ^patternCodeableConcept.coding.system = $SCT
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* value[x] 1..1
* value[x] only CodeableConcept or string or Quantity or dateTime
  * ^short = "ProtocolItemResult"
  * ^definition = "Result of the protocol item."
  * ^alias = "ProtocolitemResultaat"

Invariant: path-Report-1
Description: "The identifier system of a report is of the form 'urn:oid:2.16.840.1.113883.2.4.3.23.3.N.1' where N is the lab number."
Severity: #error
Expression: "identifier.system.startsWith('urn:oid:2.16.840.1.113883.2.4.3.23.3.').endsWith('.1')"

Invariant: path-Report-2
Description: "Either a code for cytology or histology is present."
Severity: #error
Expression: "code.coding.where(system = 'http://snomed.info/sct' and code = '1348332002').exists() xor code.coding.where(system = 'http://snomed.info/sct' and code = '252416005').exists()"

Mapping: PathReportMercuriusCore
Source: PathReport
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* identifier[reportIdentifier] -> "mercurius-core-rubriek-3" "rapnaam"
* effectivePeriod
  * start -> "mercurius-core-rubriek-80" "datumontvangst"
  * end -> "mercurius-core-rubriek-44" "datumautorisatie"
* resultsInterpreter -> "mercurius-core-rubriek-41" "autorisator (implicit, actual mapping is on Practitioner.name[nameInformation].text)"
* result[protocolData] -> "mercurius-core-rubriek-308" "protocoldata"
* conclusion -> "mercurius-core-rubriek-224" "conclusie"

Mapping: PathReportClinicalInformationMercuriusCore
Source: PathReportClinicalInformation
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* text
  * div -> "mercurius-core-rubriek-142" "klinischegegevens"

Mapping: PathReportMacroscopyMercuriusCore
Source: PathReportMacroscopy
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* text
  * div -> "mercurius-core-rubriek-184" "macroscopie"

Mapping: PathReportMicroscopyMercuriusCore
Source: PathReportMicroscopy
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* text
  * div -> "mercurius-core-rubriek-222" "microscopie"