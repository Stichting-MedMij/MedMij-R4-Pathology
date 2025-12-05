// All LogicalModels used in Pathology

Logical: LmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Patient
Title: "Patient"
Description: "TODO"
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
  * CitizenServiceNumber 0..1 Identifier "The citizen service number (BSN) as introduced nationally."
    * ^alias = "BSN"
  * CitizenServiceNumberStatus 0..1 code "Status used to present the origin of the supplier of the BSN (ZIS, SBV-Z, etc.) or the reason why no BSN is available. Default when empty is _Onbekend_."
    * ^alias = "StatusBSN"
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
* Gender from $GenderValueSetURL (required)
  * ^alias = "Geslacht"
* BirthInformation 0..1 BackboneElement "Information on the birth of the patient."
  * BirthDate 0..1 dateTime "Birth date."
    * ^alias = "Geboortedatum"
  * BirthCentury 0..1 integer "Century of birth date."
    * ^alias = "Geboorte-eeuw"
  * BirthPlace 0..1 CodeableConcept "Place of birth."
  // * BirthPlace from GBA33 (required) // Binding needs to be checked
    * ^alias = "Geboorteplaats"
    * ^comment = "The place of birth is part of the CIS personalia as delivered by the CIS-GBA."
  * BirthCountry 0..1 CodeableConcept "Country of birth."
  // * BirthCountry from GBA34 (required) // Binding needs to be checked
    * ^alias = "Geboorteland"
    * ^comment = "Not obligatory, but desirable."
* Age 0..1 Age "Age, calculated on day of registration."
  * ^alias = "Leeftijd"
* Address 0..1 Address "Address of the patient."
  * Street 0..1 string "Street name of the address.."
    * ^alias = "Straat"
  * HouseNumber 0..1 string "House number of the address."
    * ^alias = "Huisnummer"
  * PostalCode 0..1 string "Postal code, either Dutch or foreign." """
    Postal code, either Dutch or foreign.
    
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (nnnn AA). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy 0000 XX is used.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy 0009 XX is used.
    """
    * ^alias = "Postcode"
  * City 0..1 CodeableConcept "Place name."
  // * City from GBA33 (required) // Binding needs to be checked
    * ^alias = "Woonplaats"
  // Concept toevoegen voor land?
* DeceaseInformation 0..1 BackboneElement "Information of the decease of the patient."
  * DeceaseDate 0..1 date "Date of decease."
    * ^alias = "DatumOverlijden"
  * DeceaseTime 0..1 time "Time of decease."
    * ^alias = "TijdOverlijden"

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
  * CitizenServiceNumber -> "mercurius-core-rubriek-34" "bsnummer"
  * CitizenServiceNumberStatus -> "mercurius-core-rubriek-35" "statusbsn"
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
  * BirthCentury -> "mercurius-core-rubriek-13" "geboorteeeuw"
  * BirthPlace -> "mercurius-core-rubriek-14" "geboorteplaats"
  * BirthCountry -> "mercurius-core-rubriek-15" "geboorteland"
* Age -> "mercurius-core-rubriek-12" "leeftijd"
* Address
  * Street -> "mercurius-core-rubriek-16" "straat"
  * HouseNumber -> "mercurius-core-rubriek-17" "huisnummer"
  * PostalCode -> "mercurius-core-rubriek-18" "postcode"
  * PostalCode -> "mercurius-core-rubriek-20" "postcodebuitenland"
  * City -> "mercurius-core-rubriek-19" "woonplaats"
* DeceaseInformation
  * DeceaseDate -> "mercurius-core-rubriek-102" "datumoverlijden"
  * DeceaseTime -> "mercurius-core-rubriek-103" "tijdoverlijden"