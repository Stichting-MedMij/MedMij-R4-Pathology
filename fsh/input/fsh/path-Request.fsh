// Profiles on ServiceRequest and Specimen to be used in Pathology

Profile: PathRequest
Parent: ServiceRequest
Id: path-Request
Title: "path Request"
Description: "Request for a pathology study to be performed by a certain laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This ServiceRequest resource represents the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* .
  * ^short = "Request"
  * ^definition = "Request for a pathology study to be performed by a certain laboratory."
  * ^alias = "Aanvraag"
* status
  * ^patternCode = #completed
* intent
  * ^patternCode = #order
* category
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains
    requestType 0..1 and
    healthScreeningType 0..1
* category[requestType] from MercuriusRequestType_VS (required)
  * ^short = "RequestType"
  * ^definition = "This additional typing of the examination can provide a trigger to avoid sending to ZIS, CIS, Nat. Dababase or others, or to send a consultation report (electronically) to another lab."
  * ^alias = "SoortAanvraag"
  * ^comment = "Default when empty is _normaal_."
* category[healthScreeningType] from MercuriusHealthScreeningType_VS (required)
  * ^short = "HealthScreeningType"
  * ^definition = "Type of national trial for this request."
  * ^alias = "BVOSoort"
  * ^comment = "Obligatory if request is national trail. Default _0_ or empty if not a national trial."
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* requester only Reference(PractitionerRole or http://medmij.nl/fhir/StructureDefinition/path-Request.Requester)
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* specimen 1..*
* specimen only Reference(Specimen or http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen)
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"

Profile: PathRequestSpecimen
Parent: Specimen
Id: path-Request.Specimen
Title: "path Request.Specimen"
Description: "Specimen that will be examined by a laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Specimen resource represents the specimen-related concepts from the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* .
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"
* type
  // Specify ValueSet
  * ^short = "SpecimenMaterial"
  * ^definition = "Type of specimen."
  * ^alias = "AardMateriaal"
* subject 1..1
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* receivedTime
  * ^short = "ReceivedDate"
  * ^definition = "Date when specimen is received at the laboratory."
  * ^alias = "DatumOntvangst"
* collection
  * collectedDateTime
    * ^short = "CollectionDate"
    * ^definition = "Date when specimen is taken from patient."
    * ^alias = "DatumAfname"
  * method
    // Specify ValueSet
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
* ^purpose = "This PractitionerRole resource represents the requester-related concepts from the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* .
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* practitioner only Reference(Practitioner or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner)
  * ^short = "RequesterName"
  * ^definition = "Name of the requester."
  * ^comment = "The actual mapping of the RequesterName concept is on `Practitioner.name[nameInformation].text`."
  * ^alias = "AanvragerNaam"
* organization only Reference(Organization or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization)
  * ^short = "Hospital"
  * ^definition = "Name of the hospital from where the specimen is sent."
  * ^comment = "The actual mapping of the Hospital concept is on `Organization.name`."
  * ^alias = "Ziekenhuis"
* specialty[specialty]
  * ^short = "Specialty"
  * ^definition = "Specialty of the requester."
  * ^alias = "Specialisme"
  * ^binding.description = "Use ConceptMap MercuriusSpecialty-to-SpecialismeAGBCodelijst to translate terminology from the functional model to profile terminology in ValueSet SpecialismeAGBCodelijst."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusSpecialty-to-SpecialismeAGBCodelijst"
* location only Reference(Location or http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider)
  * ^short = "Location"
  * ^definition = "Location of requesting institute."
  * ^comment = "The actual mapping of the Location concept is on `Location.name`."
  * ^alias = "Locatie"

Mapping: PathRequestMercuriusCore
Source: PathRequest
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* category[requestType] -> "mercurius-core-rubriek-89" "soortaanvraag"
* category[healthScreeningType] -> "mercurius-core-rubriek-97" "bvosoort"

Mapping: PathRequestSpecimenMercuriusCore
Source: PathRequestSpecimen
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* type -> "mercurius-core-rubriek-76" "aardmateriaal"
* receivedTime -> "mercurius-core-rubriek-80" "datumontvangst"
* collection
  * collectedDateTime -> "mercurius-core-rubriek-77" "datumafname"
  * method -> "mercurius-core-rubriek-87" "verkrijgingswijze"

Mapping: PathRequestRequesterMercuriusCore
Source: PathRequestRequester
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* practitioner -> "mercurius-core-rubriek-68" "aanvrager (implicit, actual mapping is on Practitioner.name[nameInformation].text)"
* organization -> "mercurius-core-rubriek-72" "ziekenhuis (implicit, actual mapping is on Organization.name)"
* specialty[specialty] -> "mercurius-core-rubriek-71" "specialisme"
* location -> "mercurius-core-rubriek-67" "locatie (implicit, actual mapping is on Location.name)"