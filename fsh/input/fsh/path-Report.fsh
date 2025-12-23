// Profile on DiagnosticReport to be used in Pathology

Profile: PathReport
Parent: DiagnosticReport
Id: path-Report
Title: "path Report"
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This DiagnosticReport resource represents the Report building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* . obeys path-Report-1
  * ^short = "Report"
  * ^definition = "TO DO"
  * ^alias = "Verslag"
* extension contains ExtReportFirstAuthorizationDate named firstAuthorizationDate 0..1
* basedOn 1..*
* basedOn only Reference(ServiceRequest or http://medmij.nl/fhir/StructureDefinition/path-Request)
* status
  * ^comment = "For reports that have been authorized only once, status _final_ is used. For reports that have been authorized multiple times, status _amended_ is used."
  * ^condition = "path-Report-1"
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* effectivePeriod
  * start
    * ^short = "ReceivedDate"
    * ^definition = "Date when specimen is received at the laboratory."
    * ^alias = "DatumOntvangst"
  * end
    * ^short = "AuthorizationDate / FirstAuthorizationDate"
    * ^definition = "Date of authorization."
    * ^comment = "In case a report has been authorized only once, the AuthorizationDate and FirstAuthorizationDate concepts coincide, and the Report.FirstAuthorizationDate extension is optional. If a report is authorized more than once, the latest AuthorizationDate is conveyed here, while the FirstAuthorizationDate is conveyed via the aforementioned extension."
    * ^alias[0] = "DatumAutorisatie"
    * ^alias[0] = "DatumEersteAutorisatie"
* resultsInterpreter only Reference(Practitioner or PractitionerRole or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole)
  // Mapping naar Pathologist toevoegen, inclusief comment over mapping (i.e. alleen als Autorisator leeg is)
  * ^short = "Authorizer"
  * ^definition = "Name of the pathologist who has authorized the report."
  * ^alias = "Autorisator"
  * ^comment = "The actual mapping of the Authorizer concept is on `Practitioner.name[nameInformation].text`." // If Authorizer is empty, fall back on Pathologist?
* specimen only Reference(Specimen or http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen)
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"
* conclusion
  * ^short = "Conclusion"
  * ^definition = "Conclusion of the report."
  * ^alias = "Conclusie"

Extension: ExtReportFirstAuthorizationDate
Id: ext-Report.FirstAuthorizationDate
Title: "ext Report.FirstAuthorizationDate"
Description: "An extension to provide the date of first authorization."
Context: DiagnosticReport
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This extension represents the FirstAuthorizationDate concept of the Report building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
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