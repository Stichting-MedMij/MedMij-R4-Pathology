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
* . obeys path-Report-1
  * ^short = "Report"
  * ^definition = "Pathology report which contains the findings and interpretation of a pathology study."
  * ^alias = "Verslag"
* extension 1..*
* extension contains ExtReportFirstAuthorizationDate named firstAuthorizationDate 1..1
* identifier 1..*
  * ^short = "ReportIdentifier"
  * ^definition = "Identifier of the report."
  * ^alias = "VerslagIdentificatienummer"
* basedOn 1..*
* basedOn only Reference(ServiceRequest or http://medmij.nl/fhir/StructureDefinition/path-Request)
* status
  * ^comment = "For reports that have been authorized only once, status _final_ is used. For reports that have been authorized multiple times, status _amended_ is used."
  * ^condition = "path-Report-1"
* code
  * coding 2..*
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      pathologyProcedure 1..1 and
      protocol 1..1
  * coding[pathologyProcedure] 
    * ^patternCoding = $SCT#108257001
  * coding[protocol]
    * ^short = "Protocol"
    * ^definition = "Name of the protocol that is used in the Palga Protocol Module to fill the report."
    * ^alias = "Protocol"
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
    * ^short = "AuthorizationDate / FirstAuthorizationDate"
    * ^definition = "Date of authorization."
    * ^comment = "In case a report has been authorized only once, the AuthorizationDate and FirstAuthorizationDate concepts coincide, and `.extension:firstAuthorizationDate` is optional. If a report is authorized more than once, the latest AuthorizationDate is conveyed here, while the FirstAuthorizationDate is conveyed via the aforementioned extension."
    * ^alias[0] = "DatumAutorisatie"
    * ^alias[1] = "DatumEersteAutorisatie"
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
* result 3..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* result contains
    clinicalInformation 1..1 and
    macroscopy 1..1 and
    microscopy 1..1
* result[clinicalInformation] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.ClinicalInformation)
* result[macroscopy] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.Macroscopy)
* result[microscopy] only Reference(http://medmij.nl/fhir/StructureDefinition/path-Report.Microscopy)
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
* status
  * ^patternCode = #final
* code
  * ^patternCodeableConcept = $SCT#TBD
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* valueString 1..1
  * ^short = "ClinicalInformation"
  * ^definition = "Clinical information section of the report."
  * ^alias = "KlinischeGegevens"

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
* status
  * ^patternCode = #final
* code
  * ^patternCodeableConcept = $SCT#168126000
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* valueString 1..1
  * ^short = "Macroscopy"
  * ^definition = "Macroscopy-related results."
  * ^alias = "Macroscopie"

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
* status
  * ^patternCode = #final
* code
  * ^patternCodeableConcept = $SCT#117259009
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* valueString 1..1
  * ^short = "Microscopy"
  * ^definition = "Microscopy-related results."
  * ^alias = "Microscopie"

Extension: ExtReportFirstAuthorizationDate
Id: ext-Report.FirstAuthorizationDate
Title: "ext Report.FirstAuthorizationDate"
Description: "An extension to provide the date of first authorization."
Context: DiagnosticReport
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This extension represents the FirstAuthorizationDate concept of the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* . 0..1
* value[x] 1..1
* value[x] only dateTime
  * ^short = "FirstAuthorizationDate"
  * ^definition = "Date of first authorization. Not to be overwritten when authorized again."
  * ^comment = "In case a report has been authorized only once, the AuthorizationDate and FirstAuthorizationDate concepts coincide, and this extension is optional. If a report is authorized more than once, the FirstAuthorizationDate is conveyed here, while the AuthorizationDate is conveyed via `.effectivePeriod.end`."
  * ^alias = "DatumEersteAutorisatie"

Invariant: path-Report-1
Description: "The status of a report is either 'final' or 'amended'."
Severity: #error
Expression: "status = 'final' or status = 'amended'"

Mapping: PathReportMercuriusCore
Source: PathReport
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* identifier -> "mercurius-core-rubriek-3" "rapnaam"
* code
  * coding[protocol] -> "mercurius-core-rubriek-140" "protocolnaam"
* effectivePeriod
  * start -> "mercurius-core-rubriek-80" "datumontvangst"
  * end -> "mercurius-core-rubriek-44" "datumautorisatie"
  * end -> "mercurius-core-rubriek-47" "datumeersteautorisatie"
* resultsInterpreter -> "mercurius-core-rubriek-41" "autorisator (implicit, actual mapping is on Practitioner.name[nameInformation].text)"
* conclusion -> "mercurius-core-rubriek-224" "conclusie"

Mapping: ExtReportFirstAuthorizationDateMercuriusCore
Source: ExtReportFirstAuthorizationDate
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* valueDateTime -> "mercurius-core-rubriek-47" "datumeersteautorisatie"