// All LogicalModels used in Pathology

Logical: LmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Patient
Title: "Patient"
Description: "The person whose human tissue is analyzed in a pathology study."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Patient building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* ^abstract = true
// Add cardinalities based on dataset, or add separate logical model for transaction
* .
  * ^alias = "Patiënt"
* PatientIdentification 0..1 BackboneElement "Information on patient identification."
  * PatientNumber 0..1 Identifier "Patient number."
    * ^alias = "Patiëntnummer"
    * ^comment = "Obligatory in some hospitals/locations."
  * ExternalPatientNumberInformation 0..2 BackboneElement "Information on external patient numbers."
    * ExternalPatientNumber 0..1 Identifier "Patient number from external location, if local patient number is used."
      * ^alias = "ExternPatiëntnummer"
    * ExternalPatientNumberLocation 0..1 string "Location belonging to external patient number."
      * ^alias = "ExternPatiëntnummerLocatie"
* Name 0..1 BackboneElement "Name of the patient."
  * ^alias = "Naam"
  * Initials 0..1 string "Initials of the patient in capitals, divided by dots."
    * ^alias = "Voorletters"
  * FamilyName 0..1 BackboneElement "Family name of the patient."
    * ^alias = "Geslachtsnaam"
    * Prefix 0..1 string "Prefix to the last name of the patient."
      * ^alias = "Voorvoegsels"
    * LastName 0..1 string "Last name of the patient."
      * ^alias = "Achternaam"
* Gender 0..1 code "Gender of the patient."
* Gender from MercuriusGender_VS (required)
  * ^alias = "Geslacht"
* BirthInformation 0..1 BackboneElement "Information on the birth of the patient."
  * BirthDate 0..1 dateTime "Birth date."
    * ^alias = "Geboortedatum"
  * BirthPlace 0..1 CodeableConcept "Place of birth."
    * ^alias = "Geboorteplaats"
    * ^comment = "The place of birth is part of the CIS personalia as delivered by the CIS-GBA."
  * BirthCountry 0..1 CodeableConcept "Country of birth."
    * ^alias = "Geboorteland"
    * ^comment = "Not obligatory, but desirable."
* Address 0..1 Address "Address of the patient."
  * Street 0..1 string "Street name of the address."
    * ^alias = "Straat"
  * HouseNumber 0..1 string "House number of the address."
    * ^alias = "Huisnummer"
  * PostalCode 0..1 string "Postal code, either Dutch or foreign."
    * ^alias = "Postcode"
    * ^comment = """
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (nnnn AA). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy _0000 XX_ is used.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy _0009 XX_ is used.
    """
  * City 0..1 CodeableConcept "Place name."
    * ^alias = "Woonplaats"
* DeceaseInformation 0..1 BackboneElement "Information of the decease of the patient."
  * DeceaseDate 0..1 date "Date of decease."
    * ^alias = "DatumOverlijden"
  * DeceaseTime 0..1 time "Time of decease."
    * ^alias = "TijdOverlijden"

Logical: LmRequest
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Request
Title: "Request"
Description: "Request for a pathology study to be performed by a certain laboratory."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Request building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* ^abstract = true
// Add cardinalities based on dataset, or add separate logical model for transaction?
* .
  * ^alias = "Aanvraag"
* RequestType 0..1 CodeableConcept "This additional typing of the examination can provide a trigger to avoid sending to ZIS, CIS, Nat. Dababase or others, or to send a consultation report (electronically) to another lab."
* RequestType from MercuriusRequestType_VS (required)
  * ^alias = "SoortAanvraag"
  * ^comment = "Default when empty is _normaal_."
* HealthScreeningType 0..1 CodeableConcept "Type of national trial for this request."
* HealthScreeningType from MercuriusHealthScreeningType_VS (required)
  * ^alias = "BVOSoort"
  * ^comment = "Obligatory if request is national trail. Default _0_ or empty if not a national trial."
* Requester 0..1 BackboneElement "Requester of the pathology study."
  * ^alias = "Aanvrager"
  * RequesterName 0..1 string "Name of the requester."
    * ^alias = "AanvragerNaam"
  * Specialty 0..1 CodeableConcept "Specialty of the requester."
  * Specialty from MercuriusSpecialty_VS (required)
    * ^alias = "Specialisme"
  * Hospital 0..1 string "Name of the hospital from where the specimen is sent."
    * ^alias = "Ziekenhuis"
  * Location 0..1 string "Location of requesting institute."
    * ^alias = "Locatie"
* Specimen 0..1 BackboneElement "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"
  * SpecimenMaterial 0..1 CodeableConcept "Type of specimen."
  // Specify ValueSet
    * ^alias = "AardMateriaal"
  * CollectionDate 0..1 date "Date when specimen is taken from patient."
    * ^alias = "DatumAfname"
  * ReceivedDate 0..1 date "Date when specimen is received at the laboratory."
    * ^alias = "DatumOntvangst"
  * CollectionMethod 0..1 CodeableConcept "The way the specimen is collected (biopsy, resection, etc.)."
  // Specify ValueSet
    * ^alias = "Verkrijgingswijze"

Logical: LmReport
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Report
Title: "Report"
Description: "Pathology report which contains the findings and interpretation of a pathology study."
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Report building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* ^abstract = true
// Add cardinalities based on dataset, or add separate logical model for transaction?
* .
  * ^alias = "Verslag"
* Pathologist 0..1 BackboneElement "Responsible pathologist who has to authorise the report."
  * ^alias = "Patholoog"
  * PathologistCode 0..1 string "Code for the responsible pathologist who has to authorise the report."
    * ^alias = "PatholoogCode"
  * PathologistName 0..1 string "Name (expanded code) for the responsible pathologist who has to authorise the report."
    * ^alias = "PatholoogNaam"
* Authorizer 0..1 string "Name of the pathologist who has authorized the report."
  * ^alias = "Autorisator"
* AuthorizationDate 0..1 date "Date of authorization."
  * ^alias = "DatumAutorisatie"
* FirstAuthorizationDate 0..1 date "Date of first authorization. Not to be overwritten when authorized again."
  * ^alias = "DatumEersteAutorisatie"
* Conclusion 0..1 string "Conclusion of the report."
  * ^alias = "Conclusie"

Mapping: LmPatientMercuriusCore
Source: LmPatient
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* PatientIdentification
  * PatientNumber -> "mercurius-core-rubriek-4" "patientnummer"
  * ExternalPatientNumberInformation
    * ExternalPatientNumber -> "mercurius-core-rubriek-30" "expatientnr1"
    * ExternalPatientNumber -> "mercurius-core-rubriek-32" "expatientnr2"
    * ExternalPatientNumberLocation -> "mercurius-core-rubriek-31" "extpatientnr1loc"
    * ExternalPatientNumberLocation -> "mercurius-core-rubriek-33" "extpatientnr2loc"
* Name
  * Initials -> "mercurius-core-rubriek-9" "voorletters"
  * FamilyName
    * Prefix -> "mercurius-core-rubriek-6" "vvnaamman"
    * Prefix -> "mercurius-core-rubriek-8" "vvnaamvrouw"
    * LastName -> "mercurius-core-rubriek-5" "naamman"
    * LastName -> "mercurius-core-rubriek-7" "naamvrouw"
* Gender -> "mercurius-core-rubriek-10" "geslacht"
* BirthInformation
  * BirthDate -> "mercurius-core-rubriek-11" "geboortedatum"
  * BirthPlace -> "mercurius-core-rubriek-14" "geboorteplaats"
  * BirthCountry -> "mercurius-core-rubriek-15" "geboorteland"
* Address
  * Street -> "mercurius-core-rubriek-16" "straat"
  * HouseNumber -> "mercurius-core-rubriek-17" "huisnummer"
  * PostalCode -> "mercurius-core-rubriek-18" "postcode"
  * PostalCode -> "mercurius-core-rubriek-20" "postcodebuitenland"
  * City -> "mercurius-core-rubriek-19" "woonplaats"
* DeceaseInformation
  * DeceaseDate -> "mercurius-core-rubriek-102" "datumoverlijden"
  * DeceaseTime -> "mercurius-core-rubriek-103" "tijdoverlijden"

Mapping: LmRequestMercuriusCore
Source: LmRequest
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* RequestType -> "mercurius-core-rubriek-89" "soortaanvraag"
* HealthScreeningType -> "mercurius-core-rubriek-97" "bvosoort"
* Requester
  * RequesterName -> "mercurius-core-rubriek-68" "aanvrager"
  * Specialty -> "mercurius-core-rubriek-71" "specialisme"
  * Hospital -> "mercurius-core-rubriek-72" "ziekenhuis"
  * Location -> "mercurius-core-rubriek-67" "locatie"
* Specimen
  * SpecimenMaterial -> "mercurius-core-rubriek-76" "aardmateriaal"
  * CollectionDate -> "mercurius-core-rubriek-77" "datumafname"
  * ReceivedDate -> "mercurius-core-rubriek-80" "datumontvangst"
  * CollectionMethod -> "mercurius-core-rubriek-87" "verkrijgingswijze"

Mapping: LmReportMercuriusCore
Source: LmReport
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* Pathologist
  * PathologistCode -> "mercurius-core-rubriek-37" "codepatholoog"
  * PathologistName -> "mercurius-core-rubriek-38" "patholoog"
* Authorizer -> "mercurius-core-rubriek-41" "autorisator"
* AuthorizationDate -> "mercurius-core-rubriek-44" "datumautorisatie"
* FirstAuthorizationDate -> "mercurius-core-rubriek-47" "datumeersteautorisatie"
* Conclusion -> "mercurius-core-rubriek-224" "conclusie"