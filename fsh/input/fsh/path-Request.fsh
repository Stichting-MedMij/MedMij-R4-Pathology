// Profiles on ServiceRequest and Specimen to be used in Pathology

Profile: PathRequest
Parent: ServiceRequest
Id: path-Request
Title: "path Request"
Description: "Request for a pathology study to be performed by a certain laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This ServiceRequest resource represents the Request building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* . obeys path-Request-1
  * ^short = "Request"
  * ^definition = "Request for a pathology study to be performed by a certain laboratory."
  * ^alias = "Aanvraag"
* status
  * ^patternCode = #completed
* intent
  * ^patternCode = #order
* category 3..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains
    pathology 1..1 and
    requestType 1..1 and
    healthScreeningType 1..1
* category[pathology]
  * ^patternCodeableConcept = $SCT#108257001
* category[requestType] from MercuriusRequestType_VS (required)
  * ^short = "RequestType"
  * ^definition = "This additional typing of the examination can provide a trigger to avoid sending to ZIS, CIS, National Dababase or others, or to send a consultation report (electronically) to another lab."
  * ^alias = "SoortAanvraag"
  * ^comment = "When the RequestType concept has an empty value, _normaal_ SHALL be used as default value."
* category[healthScreeningType] from MercuriusHealthScreeningType_VS (required)
  * ^short = "HealthScreeningType"
  * ^definition = "Type of national trial for this request."
  * ^alias = "BVOSoort"
  * ^comment = "When the HealthScreeningType concept has an empty value, _0_ SHALL be used as default value."
* code 1..1
  * ^comment = "If the requested pathology study is of type cytology (which means that the ReportIdentifier (i.e. _rapnaam_, mercurius-core-rubriek-3) starts with either _B_ or _C_, corresponding to cervical cytology and other cytology, respectively), SNOMED code _1348332002_ SHALL be used as `.code`. Likewise, if the study is of type histology (in which case the ReportIdentifier starts with _T_), SNOMED code _252416005_ SHALL be used instead. Studies for which the ReportIdentifier starts with _S_ (i.e. autopsies) are out of scope."
  * coding 1..*
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      cytology 0..1 and
      histology 0..1
  * coding[cytology] 
    * ^patternCoding = $SCT#1348332002
    * ^condition = "path-Request-1"
  * coding[histology]
    * ^patternCoding = $SCT#252416005
    * ^condition = "path-Request-1"
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* requester 1..1
* requester only Reference(PractitionerRole or http://medmij.nl/fhir/StructureDefinition/path-Request.Requester)
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* reasonCode 1..1
  * text 1..1
    * ^short = "ClinicalQuestion"
    * ^definition = "Clinical request information."
    * ^alias = "KlinischeVraag"
* specimen 1..*
* specimen only Reference(Specimen or http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen)
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^comment = "Both the primary specimen as well as the individual samples taken from that specimen are referenced here. If only a single sample is taken (i.e. the NumberOfSamples concept is equal to _1_), precisely one Specimen is referenced here, as the primary specimen and sample coincide in that case. If multiple samples have been taken from the primary specimen, the `.specimen` element contains _NumberOfSamples + 1_ references, one for the primary specimen and one for each sample."
  * ^alias = "Monster"

Profile: PathRequestSpecimen
Parent: Specimen
Id: path-Request.Specimen
Title: "path Request.Specimen"
Description: "Specimen that will be examined by a laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Specimen resource represents the specimen-related concepts from the Request building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* .
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^comment = "This resource is used to convey either the primary specimen or an individual sample taken from that specimen. In the latter case, the `.parent` refers to the Specimen resource corresponding to the primary specimen."
  * ^alias = "Monster"
* type 1..1
  * text 1..1
    * ^short = "SpecimenMaterial"
    * ^definition = "Type of specimen."
    * ^alias = "AardMateriaal"
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* receivedTime 1..1
  * ^short = "ReceivedDate"
  * ^definition = "Date when specimen is received at the laboratory."
  * ^alias = "DatumOntvangst"
* parent only Reference(Specimen or http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen)
  * ^comment = "If this Specimen resource corresponds to a sample taken from the primary specimen, the latter is referenced here."
* collection
  * collectedDateTime
    * ^short = "CollectionDate"
    * ^definition = "Date when specimen is taken from patient."
    * ^alias = "DatumAfname"
  * method
    * text
      * ^short = "CollectionMethod"
      * ^definition = "The way the specimen is collected (biopsy, resection, etc.)."
      * ^alias = "Verkrijgingswijze"

Profile: PathRequestRequester
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Id: path-Request.Requester
Title: "path Request.Requester"
Description: "Requester of the pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This PractitionerRole resource represents the requester-related concepts from the Request building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* .
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* practitioner 1..1
* practitioner only Reference(Practitioner or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)
  * ^short = "RequesterName"
  * ^definition = "Name of the requester."
  * ^comment = "The actual mapping of the RequesterName concept is on `Practitioner.name[nameInformation].text`."
  * ^alias = "AanvragerNaam"
* organization 0..1
* organization only Reference(Organization or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization)
  * ^short = "Hospital"
  * ^definition = "Name of the hospital from where the specimen is sent."
  * ^comment = "The actual mapping of the Hospital concept is on `Organization.name`."
  * ^alias = "Ziekenhuis"
* specialty 1..1
* specialty[specialty] 1..1
  * ^short = "Specialty"
  * ^definition = "Specialty of the requester."
  * ^alias = "Specialisme"
  * ^binding.description = "Use ConceptMap MercuriusSpecialty-to-SpecialismeAGBCodelijst to translate terminology from the functional model to profile terminology in ValueSet SpecialismeAGBCodelijst."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusSpecialty-to-SpecialismeAGBCodelijst"
* location 0..1
* location only Reference(Location or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider)
  * ^short = "Location"
  * ^definition = "Location of requesting institute."
  * ^comment = "The actual mapping of the Location concept is on `Location.name`."
  * ^alias = "Locatie"

Invariant: path-Request-1
Description: "Either a code for cytology or histology is present."
Severity: #error
Expression: "code.coding.where(system = 'http://snomed.info/sct' and code = '1348332002').exists() xor code.coding.where(system = 'http://snomed.info/sct' and code = '252416005').exists()"

Mapping: PathRequestMercuriusCore
Source: PathRequest
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* category[requestType] -> "mercurius-core-rubriek-89" "soortaanvraag"
* category[healthScreeningType] -> "mercurius-core-rubriek-97" "bvosoort"
* reasonCode
  * text -> "mercurius-core-rubriek-139" "klinischevraag"

Mapping: PathRequestSpecimenMercuriusCore
Source: PathRequestSpecimen
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* type
  * text -> "mercurius-core-rubriek-76" "aardmateriaal"
* receivedTime -> "mercurius-core-rubriek-80" "datumontvangst"
* collection
  * collectedDateTime -> "mercurius-core-rubriek-77" "datumafname"
  * method
    * text -> "mercurius-core-rubriek-87" "verkrijgingswijze"

Mapping: PathRequestRequesterMercuriusCore
Source: PathRequestRequester
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* practitioner -> "mercurius-core-rubriek-68" "aanvrager (implicit, actual mapping is on Practitioner.name[nameInformation].text)"
* organization -> "mercurius-core-rubriek-72" "ziekenhuis (implicit, actual mapping is on Organization.name)"
* specialty[specialty] -> "mercurius-core-rubriek-71" "specialisme"
* location -> "mercurius-core-rubriek-67" "locatie (implicit, actual mapping is on Location.name)"