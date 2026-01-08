// Profile on Patient derived from nl-core-Patient to be used in Pathology

Profile: PathPatient
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Id: path-Patient
Title: "path Patient"
Description: "The person whose human tissue is analyzed in a pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Patient resource represents the Patient building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* .
  * ^short = "Patient"
  * ^definition = "The person whose human tissue is analyzed in a pathology study."
  * ^alias = "Patient"
* extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1
* extension[birthPlace]
  * valueAddress
    * city
      * ^short = "BirthPlace"
      * ^definition = "Place of birth."
      * ^comment = "The place of birth is part of the CIS personalia as delivered by the CIS-GBA."
      * ^alias = "Geboorteplaats"
    * country
      * ^short = "BirthCountry"
      * ^definition = "Country of birth."
      * ^alias = "Geboorteland"
* name[nameInformation] 1..2
  * ^short = "Name"
  * ^definition = "Name of the patient."
  * ^alias = "Naam"
  * family 1..1
    * ^short = "FamilyName"
    * ^definition = "Family name of the patient."
    * ^alias = "Geslachtsnaam"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix]
      * valueString
        * ^short = "Prefix"
        * ^definition = "Prefix to the last name of the patient."
        * ^alias = "Voorvoegsels"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name] 1..1
      * valueString
        * ^short = "LastName"
        * ^definition = "Last name of the patient."
        * ^alias = "Achternaam"
  * given 1..*
    * ^short = "Initials"
    * ^definition = "Initials of the patient in capitals, divided by dots."
    * ^alias = "Voorletters"
* gender 1..1
  * ^short = "Gender"
  * ^definition = "Gender of the patient."
  * ^alias = "Geslacht"
  * ^binding.description = "Use ConceptMap MercuriusGender-to-AdministrativeGender to translate terminology from the functional model to profile terminology in ValueSet AdministrativeGender."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusGender-to-AdministrativeGender"
* birthDate 1..1
  * ^short = "BirthDate"
  * ^definition = "Birth date."
  * ^comment = "If the birth date (i.e. _geboortedatum_, mercurius-core-rubriek-11) retrieved from Mercurius has the form YY-MM-DD, the birth century (i.e. _geboorteeeuw_, mercurius-core-rubriek-13) SHALL be used to convert this date to a valid FHIR date of the form YYYY-MM-DD."
  * ^alias = "Geboortedatum"
* address 1..*
  * line
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName]
      * valueString
        * ^short = "Street"
        * ^definition = "Street name of the address."
        * ^alias = "Straat"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber]
      * valueString
        * ^short = "HouseNumber"
        * ^definition = "House number of the address."
        * ^alias = "Huisnummer"
  * city 1..1
    * ^short = "City"
    * ^definition = "Place name."
    * ^alias = "Woonplaats"
  * postalCode 1..1
    * ^short = "PostalCode"
    * ^definition = "Postal code, either Dutch or foreign."
    * ^comment = """
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (nnnn AA). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy _0000 XX_ is used in Mercurius.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy _0009 XX_ is used in Mercurius.

    If the PostalCode concept (i.e. either _postcode_, mercurius-core-rubriek-18, or _postcodebuitenland_, mercurius-core-rubriek-20) attains one of the dummy values indicated above, the `.address.postalCode` element SHALL be omitted.
    """
    * ^alias = "Postcode"

Mapping: PathPatientMercuriusCore
Source: PathPatient
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* extension[birthPlace]
  * valueAddress
    * city -> "mercurius-core-rubriek-14" "geboorteplaats"
    * country -> "mercurius-core-rubriek-15" "geboorteland"
* name[nameInformation]
  * family
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-prefix]
      * valueString -> "mercurius-core-rubriek-6" "vvnaamman"
      * valueString -> "mercurius-core-rubriek-8" "vvnaamvrouw"
    * extension[http://hl7.org/fhir/StructureDefinition/humanname-own-name]
      * valueString -> "mercurius-core-rubriek-5" "naamman"
      * valueString -> "mercurius-core-rubriek-7" "naamvrouw"
  * given -> "mercurius-core-rubriek-9" "voorletters"
* gender -> "mercurius-core-rubriek-10" "geslacht"
* birthDate -> "mercurius-core-rubriek-11" "geboortedatum"
* birthDate -> "mercurius-core-rubriek-13" "geboorteeeuw (implicit)"
* address
  * line
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName]
      * valueString -> "mercurius-core-rubriek-16" "straat"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber]
      * valueString -> "mercurius-core-rubriek-17" "huisnummer"
  * city -> "mercurius-core-rubriek-19" "woonplaats"
  * postalCode -> "mercurius-core-rubriek-18" "postcode"
  * postalCode -> "mercurius-core-rubriek-20" "postcodebuitenland"