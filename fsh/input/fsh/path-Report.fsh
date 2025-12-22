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
* basedOn 1..*
* basedOn only Reference(ServiceRequest or http://medmij.nl/fhir/StructureDefinition/path-Request)
* status
  * ^comment = "For reports that have been authorized only one, status _final_ is used. For reports that have been authorized multiple times, status _amended_ is used."
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
    * ^comment = "In case a report has been authorized only one, the AuthorizationDate and FirstAuthorizationDate concepts coincide, and the Report.FirstAuthorizationDate extension is optional. If a report is autorized more than once, the latest AuthorizationDate is conveyed here, while the FirstAuthorizationDate is conveyed via the aforementioned extension."
    * ^alias[0] = "DatumAutorisatie"
    * ^alias[0] = "DatumEersteAutorisatie"
* resultsInterpreter only Reference(Practitioner or PractitionerRole) // Specifieke profielen voor mapping?
  * ^short = "Authorizer"
  * ^definition = "Name of the pathologist who has authorized the report."
  * ^alias = "Autorisator"
* specimen only Reference(Specimen or http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen)
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"
* conclusion
  * ^short = "Conclusion"
  * ^definition = "Conclusion of the report."
  * ^alias = "Conclusie"

Invariant: path-Report-1
Description: "The status of a report is either 'final' or 'amended'."
Severity: #error
Expression: "status = 'final' or status = 'amended'"

Mapping: PathReportMercuriusCore
Source: PathReport
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* basedOn 
* effectivePeriod
  * start -> "mercurius-core-rubriek-80" "datumontvangst"
  * end -> "mercurius-core-rubriek-44" "datumautorisatie"
  * end -> "mercurius-core-rubriek-47" "datumeersteautorisatie"
* resultsInterpreter -> "mercurius-core-rubriek-41" "autorisator (implicit, main mapping is on Practitioner.name)"
* conclusion -> "mercurius-core-rubriek-224" "conclusie"