// Profiles on ServiceRequest and Specimen used in Pathology

Profile: PathRequest
Parent: ServiceRequest
Id: path-Request
Title: "path Request"
Description: "Request for a pathology study to be performed by a certain laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This ServiceRequest resource represents the Request Clinical Information Model (CIM) for patient use cases in the context of Pathology."
* insert Copyright
* . obeys path-Request-1
  * ^short = "Request"
  * ^definition = "Request for a pathology study to be performed by a certain laboratory."
  * ^alias = "Aanvraag"
* meta 1..1
  * tag
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag contains
      careType 1..*
  * tag[careType] from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000 (required)
    * ^short = "CareType"
    * ^definition = "The type of the healthcare provider responsible for the delivered care, or more specifically, the specialty of the department and/or health professional that delivered care. It enables patients and systems to interpret the origin and context of medical data."
    * ^alias = "Zorgtype"
    * ^comment = "Note that the `careType` slice is a slice on `.meta.tag`, which might not be immediately clear based on the rendering."
  * tag[careType]
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag[careType] contains
      pathology 1..1
  * tag[careType][pathology]
    * ^comment = "Note that the `pathology` slice is a reslice of the `careType` slice, which might not be immediately clear based on the rendering."
    * ^patternCoding = $VektisAGB#0388
* identifier 1..*
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    requestIdentifier 1..1
* identifier[requestIdentifier] only PathReportReportIdentifier
  * ^short = "IdentificationNumber / RequestIdentifier"
  * ^definition = "Identifier of the request for a pathology study."
  * ^alias[0] = "Identificatienummer"
  * ^alias[1] = "AanvraagIdentificatienummer"
  * ^comment = "Even though the ReportIdentifier (i.e. _rapnaam_, mercurius-core-rubriek-3) is assigned by the laboratory doing the analysis (and thus not by the requester), the RequestIdentifier is populated with its value as well, as the request and report are always directly linked to each other in Mercurius. In particular, this identifier attains a `.value` of the form _[TCSB]YY-nnnnn_ or _[TCSB]YY-nnnnnn_ (based on the laboratory the report originates from), e.g. T26-012345. The `.system` SHALL be of the form _urn:oid:2.16.840.1.113883.2.4.3.23.3.N.1_ where _N_ is the lab number (i.e. _labid_)."
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
  * ^definition = "This typing of the examination provides additional context for the request."
  * ^alias = "SoortAanvraag"
  * ^comment = "When the RequestType concept has an empty value, _normaal_ SHALL be used as default value."
* category[healthScreeningType] from HealthScreeningType_VS (required)
  * ^short = "HealthScreeningType"
  * ^definition = "Type of national trial for this request."
  * ^alias = "BVOSoort"
  * ^comment = "When the HealthScreeningType concept has an empty value, code _0_ from the MercuriusHealthScreeningType code system SHALL be used as default value."
  * ^binding.description = "Use ConceptMap MercuriusHealthScreeningType-to-HealthScreeningType to translate terminology from the functional model to profile terminology in ValueSet HealthScreeningType."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusHealthScreeningType-to-HealthScreeningType"
* code 1..1
  * ^comment = "If the requested pathology study is of type cytology (which means that the ReportIdentifier (i.e. _rapnaam_, mercurius-core-rubriek-3) starts with either _B_ or _C_, corresponding to cervical cytology and other cytology, respectively), SNOMED CT code _1348332002_ SHALL be used as `.code`. Likewise, if the study is of type histology (in which case the ReportIdentifier starts with _T_), SNOMED CT code _252416005_ SHALL be used instead. Studies for which the ReportIdentifier starts with _S_ (i.e. autopsies) are out of scope."
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
* subject only Reference(Patient or PathPatient)
  * ^short = "Patient"
  * ^definition = "The patient as subject of the information."
  * ^alias = "Patiënt"
* requester 1..1
* requester only Reference(PractitionerRole or PathRequestRequester)
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* reasonCode 1..1
  * text 1..1
    * ^short = "ClinicalQuestion"
    * ^definition = "Clinical request information."
    * ^alias = "KlinischeVraag"
* specimen 1..*
* specimen only Reference(Specimen or PathRequestSpecimen)
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^comment = "Both the primary specimen as well as the individual samples taken from that specimen are referenced here. If only a single sample is taken, precisely one Specimen is referenced here, as the primary specimen and sample coincide in that case."
  * ^alias = "Monster"

Profile: PathRequestSpecimen
Parent: Specimen
Id: path-Request.Specimen
Title: "path Request.Specimen"
Description: "Specimen that will be examined by a laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Specimen resource represents the specimen-related concepts from the Request Clinical Information Model (CIM) for patient use cases in the context of Pathology."
* insert Copyright
* .
  * ^short = "Specimen"
  * ^definition = "Specimen that will be examined by a laboratory."
  * ^comment = "This resource is used to convey either the primary specimen or an individual sample taken from that specimen. In the latter case, the `.parent` refers to the Specimen resource corresponding to the primary specimen."
  * ^alias = "Monster"
* meta 1..1
  * tag
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag contains
      careType 1..*
  * tag[careType] from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000 (required)
    * ^short = "CareType"
    * ^definition = "The type of the healthcare provider responsible for the delivered care, or more specifically, the specialty of the department and/or health professional that delivered care. It enables patients and systems to interpret the origin and context of medical data."
    * ^alias = "Zorgtype"
    * ^comment = "Note that the `careType` slice is a slice on `.meta.tag`, which might not be immediately clear based on the rendering."
  * tag[careType]
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag[careType] contains
      pathology 1..1
  * tag[careType][pathology]
    * ^comment = "Note that the `pathology` slice is a reslice of the `careType` slice, which might not be immediately clear based on the rendering."
    * ^patternCoding = $VektisAGB#0388
* identifier 1..*
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    specimenIdentifier 1..1
* identifier[specimenIdentifier] only PathReportReportIdentifier
  * ^short = "IdentificationNumber / SpecimenIdentifier / SampleIdentifier"
  * ^definition = "Identifier of the specimen."
  * ^alias[0] = "Identificatienummer"
  * ^alias[1] = "MonsterIdentificatienummer"
  * ^alias[2] = "SampleIdentificatienummer"
  * ^comment = """
  This element is used to convey the identifier of either the primary specimen or an individual sample taken from that specimen, based on which specimen this resource represents.
  
    * In the former case, as the specimen is always directly linked to a request in Mercurius, this identifier's value equals the RequestIdentifier value, appended with _-0_. In particular, this identifier attains a `.value` of the form _[TCSB]YY-nnnnn-0_ or _[TCSB]YY-nnnnnn-0_ (based on the laboratory the report originates from), e.g. T26-012345-0.
    * In the latter case, this identifier's value equals the RequestIdentifier value, appended with _-[SampleNumber]_. In particular, this identifier attains a `.value` of the form _[TCSB]YY-nnnnn-[SampleNumber]_ or _[TCSB]YY-nnnnnn-[SampleNumber]_ (based on the laboratory the report originates from), e.g. T26-012345-1.
  
  In both cases, the `.system` SHALL be of the form _urn:oid:2.16.840.1.113883.2.4.3.23.3.N.1_ where _N_ is the lab number (i.e. _labid_).
  """
* type 1..1
  * ^short = "SpecimenMaterial"
  * ^definition = "Type of specimen."
  * ^comment = "The (string) value of the SpecimenMaterial concept present in the source system SHALL be translated to a SNOMED CT code using the [Palga On-line Thesaurus](https://www.palga.nl/voor-pathologen/palga-on-line-thesaurus), if possible. In any case, the original value SHALL be conveyed via `.text`."
  * ^alias = "AardMateriaal"
  * coding
    * system
      * ^patternUri = $SCT
  * text 1..1
* subject 1..1
* subject only Reference(Patient or PathPatient)
  * ^short = "Patient"
  * ^definition = "The patient as subject of the information."
  * ^alias = "Patiënt"
* receivedTime 1..1
  * ^short = "ReceivedDate"
  * ^definition = "Date when specimen is received at the laboratory."
  * ^alias = "DatumOntvangst"
* parent only Reference(Specimen or PathRequestSpecimen)
  * ^comment = "If this Specimen resource corresponds to a sample taken from the primary specimen, the latter is referenced here."
* collection
  * collectedDateTime
    * ^short = "CollectionDate"
    * ^definition = "Date when specimen is taken from patient."
    * ^alias = "DatumAfname"
  * method
    * ^short = "CollectionMethod"
    * ^definition = "The way the specimen is collected (biopsy, resection, etc.)."
    * ^comment = "The (string) value of the CollectionMethod concept present in the source system SHALL be translated to a SNOMED CT code using the [Palga On-line Thesaurus](https://www.palga.nl/voor-pathologen/palga-on-line-thesaurus), if possible. In any case, the original value SHALL be conveyed via `.text`."
    * ^alias = "Verkrijgingswijze"
    * coding
      * system
        * ^patternUri = $SCT
    * text 1..1

Profile: PathRequestRequester
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole
Id: path-Request.Requester
Title: "path Request.Requester"
Description: "Requester of the pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This PractitionerRole resource represents the requester-related concepts from the Request Clinical Information Model (CIM) for patient use cases in the context of Pathology."
* insert Copyright
* .
  * ^short = "Requester"
  * ^definition = "Requester of the pathology study."
  * ^alias = "Aanvrager"
* meta 1..1
  * tag
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag contains
      careType 1..*
  * tag[careType] from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000 (required)
    * ^short = "CareType"
    * ^definition = "The type of the healthcare provider responsible for the delivered care, or more specifically, the specialty of the department and/or health professional that delivered care. It enables patients and systems to interpret the origin and context of medical data."
    * ^alias = "Zorgtype"
    * ^comment = "Note that the `careType` slice is a slice on `.meta.tag`, which might not be immediately clear based on the rendering."
  * tag[careType]
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * tag[careType] contains
      pathology 1..1
  * tag[careType][pathology]
    * ^comment = "Note that the `pathology` slice is a reslice of the `careType` slice, which might not be immediately clear based on the rendering."
    * ^patternCoding = $VektisAGB#0388
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
* specialty 0..1
* specialty[specialty]
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
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* category[requestType] -> "mercurius-core-rubriek-89" "soortaanvraag"
* category[healthScreeningType] -> "mercurius-core-rubriek-97" "bvosoort"
* reasonCode
  * text -> "mercurius-core-rubriek-139" "klinischevraag"

Mapping: PathRequestMedMijCore-120
Source: PathRequest
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
* meta
  * tag[careType] -> "medmij-core-dataelement-123" "CareType"
* subject -> "medmij-core-dataelement-116" "Patient"

Mapping: PathRequestMedMij-100-alpha3
Source: PathRequest
Id: path-dataset-100-alpha3-2026xxyy
Title: "Dataset Pathologie MedMij 1.0.0-alpha.3 2026xxyy"
* . -> "path-dataelement-6" "Request"
* requester -> "path-dataelement-7" "Requester"
* specimen -> "path-dataelement-8" "Specimen"
* specimen -> "path-dataelement-15" "Sample"

Mapping: PathRequestSpecimenMercuriusCore
Source: PathRequestSpecimen
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* type -> "mercurius-core-rubriek-76" "aardmateriaal"
* receivedTime -> "mercurius-core-rubriek-80" "datumontvangst"
* collection
  * collectedDateTime -> "mercurius-core-rubriek-77" "datumafname"
  * method -> "mercurius-core-rubriek-87" "verkrijgingswijze"

Mapping: PathRequestSpecimenMedMijCore-120
Source: PathRequestSpecimen
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
* meta
  * tag[careType] -> "medmij-core-dataelement-123" "CareType"
* subject -> "medmij-core-dataelement-116" "Patient"

Mapping: PathRequestSpecimenMedMij-100-alpha3
Source: PathRequestSpecimen
Id: path-dataset-100-alpha3-2026xxyy
Title: "Dataset Pathologie MedMij 1.0.0-alpha.3 2026xxyy"
* . -> "path-dataelement-8" "Specimen"
* . -> "path-dataelement-15" "Sample"
* identifier[specimenIdentifier] -> "path-dataelement-14" "SpecimenIdentifier"
* identifier[specimenIdentifier] -> "path-dataelement-16" "SampleNumber (implicit)"

Mapping: PathRequestRequesterMercuriusCore
Source: PathRequestRequester
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* practitioner -> "mercurius-core-rubriek-68" "aanvrager (implicit, actual mapping is on Practitioner.name[nameInformation].text)"
* organization -> "mercurius-core-rubriek-72" "ziekenhuis (implicit, actual mapping is on Organization.name)"
* specialty[specialty] -> "mercurius-core-rubriek-71" "specialisme"
* location -> "mercurius-core-rubriek-67" "locatie (implicit, actual mapping is on Location.name)"

Mapping: PathRequestRequesterMedMijCore-120
Source: PathRequestRequester
Id: medmij-core-dataset-120-2026xxyy
Title: "Dataset MedMij R4 Core 1.2.0 2026xxyy"
* meta
  * tag[careType] -> "medmij-core-dataelement-123" "CareType"

Mapping: PathRequestRequesterMedMij-100-alpha3
Source: PathRequestRequester
Id: path-dataset-100-alpha3-2026xxyy
Title: "Dataset Pathologie MedMij 1.0.0-alpha.3 2026xxyy"
* . -> "path-dataelement-7" "Requester"