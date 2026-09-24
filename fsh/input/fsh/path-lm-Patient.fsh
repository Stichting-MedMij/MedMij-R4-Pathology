// Logical Model for Patient

Logical: PathLmPatient
Parent: http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-Patient
Id: path-lm-Patient
Title: "Patient"
Description: "The person whose human tissue is analyzed in a pathology study."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $PathLmPatientOID
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Patient Clinical Information Model (CIM) for patient use cases in the context of Pathology. It is based on the Patient CIM defined within MedMij Core."
* insert Copyright
* ^abstract = false
* NameInformation 1..1
  * FirstNames 0..0
  * Initials 1..1
    * ^definition = "Initials of the patient in capitals, divided by dots."
    * ^alias = "Voorletters"
  * GivenName 0..0
  * NameUsage 0..0
  * LastName 1..1
  * LastNamePartner 0..0
  * Titles 0..0
* AddressInformation 0..1
  * HouseNumberLetter 0..0
  * HouseNumberAddition 0..0
  * HouseNumberIndication 0..0
  * Postcode
    * ^comment = """
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (_nnnn AA_). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy _0000 XX_ is used in Mercurius.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy _0009 XX_ is used in Mercurius.

    If the postal code retrieved from Mercurius (i.e. either _postcode_, mercurius-core-rubriek-18, or _postcodebuitenland_, mercurius-core-rubriek-20) attains one of the dummy values indicated above, this element SHALL be omitted.
    """
  * Municipality 0..0
  * Country 0..0
  * AdditionalInformation 0..0
  * AddressType 0..0
* ContactInformation 0..0
* PatientIdentificationNumber 0..0
* DateOfBirth 1..1
  * ^comment = "If the birth date retrieved from Mercurius (i.e. _geboortedatum_, mercurius-core-rubriek-11) has the form YY-MM-DD, the birth century (i.e. _geboorteeeuw_, mercurius-core-rubriek-13) SHALL be used to convert this date to a date of the form YYYY-MM-DD."
* Gender 1..1
  * ^comment = "In Mercurius, codes from the MercuriusGender code system are used to convey the gender of the patient."
  * ^binding.description = "Use ConceptMap MercuriusGender-to-GeslachtCodelijst to translate terminology from the Mercurius model to zib terminology in ValueSet GeslachtCodelijst."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusGender-to-GeslachtCodelijst"
* MultipleBirthIndicator 0..0
* DeathIndicator 0..0
* DateOfDeath 0..0
* BirthPlace 0..1 string "Birth place" "Place of birth."
  * ^alias = "Geboorteplaats"
  * ^comment = "The place of birth is part of the CIS personalia as delivered by the CIS-GBA."
* BirthCountry 0..1 string "Birth country" "Country of birth."
  * ^alias = "Geboorteland"

Mapping: PathLmPatientMercuriusCore
Source: PathLmPatient
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* NameInformation
  * Initials -> "mercurius-core-rubriek-9" "voorletters"
  * LastName
    * Prefix -> "mercurius-core-rubriek-6" "vvnaamman"
    * Prefix -> "mercurius-core-rubriek-8" "vvnaamvrouw"
    * LastName -> "mercurius-core-rubriek-5" "naamman"
    * LastName -> "mercurius-core-rubriek-7" "naamvrouw"
* AddressInformation
  * Street -> "mercurius-core-rubriek-16" "straat"
  * HouseNumber -> "mercurius-core-rubriek-17" "huisnummer"
  * Postcode -> "mercurius-core-rubriek-18" "postcode"
  * Postcode -> "mercurius-core-rubriek-20" "postcodebuitenland"
  * PlaceOfResidence -> "mercurius-core-rubriek-19" "woonplaats"
* DateOfBirth -> "mercurius-core-rubriek-11" "geboortedatum"
* DateOfBirth -> "mercurius-core-rubriek-13" "geboorteeeuw (implicit)"
* Gender -> "mercurius-core-rubriek-10" "geslacht"
* BirthPlace -> "mercurius-core-rubriek-14" "geboorteplaats"
* BirthCountry -> "mercurius-core-rubriek-15" "geboorteland"