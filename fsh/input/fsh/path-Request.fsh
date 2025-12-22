// Profiles on ServiceRequest and Specimen to be used in Pathology

Profile: PathRequest
Parent: ServiceRequest
Id: path-Request
Title: "path Request"
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This ServiceRequest resource represents the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* .
  * ^short = "Request"
  * ^definition = "TO DO"
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
  * ^comment = "Obligatory if request is national trail. For cervical cancer trail this will be derived by (Core)U-DPS from 'cr_aanleiding'. Default _0_ or empty if not a national trial."
* subject only Reference(Patient or http://medmij.nl/fhir/StructureDefinition/path-Patient)
  * ^short = "Patient"
  * ^alias = "Patiënt"
* requester only Reference(PractitionerRole or http://medmij.nl/fhir/StructureDefinition/path-Request.Requester-PractitionerRole)
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
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
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

Profile: PathRequestRequesterPractitionerRole
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Id: path-Request.Requester-PractitionerRole
Title: "path Request.Requester PractitionerRole"
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This PractitionerRole resource represents the requester-related concepts from the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* .
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* practitioner only Reference(Practitioner or http://medmij.nl/fhir/StructureDefinition/path-Request.Requester-Practitioner)
* organization only Reference(Organization or http://medmij.nl/fhir/StructureDefinition/path-Request.Requester-Organization)
* specialty[specialty]
  * ^short = "Specialty"
  * ^definition = "Specialty of the requester."
  * ^alias = "Specialisme"
  * ^binding.description = "Use ConceptMap MercuriusSpecialty-to-SpecialismeAGBCodelijst to translate terminology from the functional model to profile terminology in ValueSet SpecialismeAGBCodelijst."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusSpecialty-to-SpecialismeAGBCodelijst"

Profile: PathRequestRequesterPractitioner
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner
Id: path-Request.Requester-Practitioner
Title: "path Request.Requester Practitioner"
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This Practitioner resource represents the RequesterName concept from the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* name[nameInformation]
  * text
    * ^short = "RequesterName"
    * ^definition = "Name of the requester."
    * ^alias = "AanvragerNaam"

Profile: PathRequestRequesterOrganization
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization
Id: path-Request.Requester-Organization
Title: "path Request.Requester Organization"
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This Organization resource represents the Hospital concept from the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* name
  * ^short = "Hospital"
  * ^definition = "Name of the hospital from where the specimen is sent."
  * ^alias = "Ziekenhuis"

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

Mapping: PathRequestRequesterPractitionerRoleMercuriusCore
Source: PathRequestRequesterPractitionerRole
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* specialty[specialty] -> "mercurius-core-rubriek-71" "specialisme"

Mapping: PathRequestRequesterPractitionerMercuriusCore
Source: PathRequestRequesterPractitioner
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* name[nameInformation]
  * text -> "mercurius-core-rubriek-68" "aanvrager"

Mapping: PathRequestRequesterOrganizationMercuriusCore
Source: PathRequestRequesterOrganization
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* name -> "mercurius-core-rubriek-72" "ziekenhuis"