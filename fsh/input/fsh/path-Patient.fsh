// Profile on Patient derived from nl-core-Patient used in Pathology

Profile: PathPatient
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Id: path-Patient
Title: "path Patient"
Description: "The person whose human tissue is analyzed in a pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This Patient resource represents the Patient Clinical Information Model (CIM) for patient use cases in the context of Pathology."
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
* name[nameInformation] 1..1
  * family 1..1
    * extension[lastName] 1..1
  * given 1..*
    * ^short = "Initials"
    * ^definition = "Initials of the patient in capitals, divided by dots."
    * ^alias = "Voorletters"
    * extension[givenOrInitial]
      * valueCode
        * ^patternCode = #IN
* gender 1..1
* birthDate 1..1
  * ^comment = "If the birth date retrieved from Mercurius (i.e. _geboortedatum_, mercurius-core-rubriek-11) has the form YY-MM-DD, the birth century (i.e. _geboorteeeuw_, mercurius-core-rubriek-13) SHALL be used to convert this date to a date of the form YYYY-MM-DD."
* address 0..1
  * postalCode
    * ^comment = """
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (_nnnn AA_). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy _0000 XX_ is used in Mercurius.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy _0009 XX_ is used in Mercurius.

    If the Postcode concept (i.e. either _postcode_, mercurius-core-rubriek-18, or _postcodebuitenland_, mercurius-core-rubriek-20) attains one of the dummy values indicated above, this element SHALL be omitted.
    """

Mapping: PathPatientMercuriusCore
Source: PathPatient
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* extension[birthPlace]
  * valueAddress
    * city -> "mercurius-core-rubriek-14" "geboorteplaats"
    * country -> "mercurius-core-rubriek-15" "geboorteland"
* name[nameInformation]
  * family
    * extension[prefix]
      * valueString -> "mercurius-core-rubriek-6" "vvnaamman"
      * valueString -> "mercurius-core-rubriek-8" "vvnaamvrouw"
    * extension[lastName]
      * valueString -> "mercurius-core-rubriek-5" "naamman"
      * valueString -> "mercurius-core-rubriek-7" "naamvrouw"
  * given -> "mercurius-core-rubriek-9" "voorletters"
* gender -> "mercurius-core-rubriek-10" "geslacht"
* birthDate -> "mercurius-core-rubriek-11" "geboortedatum"
* birthDate -> "mercurius-core-rubriek-13" "geboorteeeuw (implicit)"
* address
  * line
    * extension[streetName]
      * valueString -> "mercurius-core-rubriek-16" "straat"
    * extension[houseNumber]
      * valueString -> "mercurius-core-rubriek-17" "huisnummer"
  * city -> "mercurius-core-rubriek-19" "woonplaats"
  * postalCode -> "mercurius-core-rubriek-18" "postcode"
  * postalCode -> "mercurius-core-rubriek-20" "postcodebuitenland"