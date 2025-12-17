// Profile on Patient derived from nl-core-Patient to be used in Pathology

Profile: PathPatient
Parent: http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient
Id: path-Patient
Title: "path Patient"
Description: "TO DO"
* insert DefaultNarrative
* ^status = #active
* insert PublisherAndContact
* ^purpose = "This Patient resource represents the Patient building block for patient use cases in the context of the information standard [Pathology (Pathologie)](TODO)."
* insert Copyright
* .
  * ^short = "Patient"
  * ^definition = "TO DO"
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
      * ^comment = "Not obligatory, but desirable."
      * ^alias = "Geboorteland"
      // Add codeSpecification extension for structured data exchange?
* identifier contains // How to distinguish between the different slices?
    patientNumber 0..1 and
    externalPatientNumber 0..2
* identifier[bsn] 1..1
  * ^short = "CitizenServiceNumber"
  * ^definition = "The citizen service number (BSN) as introduced nationally."
  * ^alias = "BSN"
  // * extension[http://medmij.nl/fhir/StructureDefinition/ext-CitizenServiceNumberStatus]
  //  * valueCodeableConcept
  //    * ^short = "CitizenServiceNumberStatus"
  //    * ^definition = "Status used to present the origin of the supplier of the BSN (ZIS, SBV-Z, etc.) or the reason why no BSN is available."
  //    * ^comment = "Default when empty is _Onbekend_."
  //    * ^alias = "StatusBSN"
* identifier[patientNumber]
  * ^short = "PatientNumber"
  * ^definition = "Patient number."
  * ^comment = "Obligatory in some hospitals/locations."
  * ^alias = "Patiëntnummer"
* identifier[externalPatientNumber]
  * ^short = "ExternalPatientNumber"
  * ^definition = "Patient number from external location, if local patient number is used."
  * ^alias = "ExternPatiëntnummer"
  * assigner
    * ^short = "ExternalPatientNumberLocation"
    * ^definition = "Location belonging to external patient number."
    * ^alias = "ExternPatiëntnummerLocatie"
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
  * given 1..1 // Better to make it 1..* and separate all individual Initials. If so, change the definition.
    * ^short = "Initials"
    * ^definition = "Initials of the patient in capitals, divided by dots."
    * ^alias = "Voorletters"
* gender 1..1 // Add reference to ConceptMap
  * ^short = "Gender"
  * ^definition = "Gender of the patient."
  * ^alias = "Geslacht"
  * ^binding.description = "Use ConceptMap MercuriusGender-to-AdministrativeGender to translate terminology from the functional model to profile terminology in ValueSet AdministrativeGender."
  * ^binding.valueSet.extension[http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap].valueCanonical = "http://medmij.nl/fhir/ConceptMap/MercuriusGender-to-AdministrativeGender"
* birthDate 1..1
  * ^short = "BirthDate"
  * ^definition = "Birth date."
  * ^alias = "Geboortedatum"
* deceasedDateTime
  * ^short = "DeceaseDate / DeceaseTime"
  * ^definition = "Date and time of decease."
  * ^alias[0] = "DatumOverlijden"
  * ^alias[1] = "TijdOverlijden"
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
  * postalCode
    * ^short = "PostalCode"
    * ^definition = "Postal code, either Dutch or foreign."
    * ^comment = """
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (nnnn AA). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy 0000 XX is used.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy 0009 XX is used.
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
* identifier[bsn] -> "mercurius-core-rubriek-34" "bsnummer"
//  * extension[http://medmij.nl/fhir/StructureDefinition/ext-CitizenServiceNumberStatus]
//    * valueCodeableConcept -> "mercurius-core-rubriek-35" "statusbsn"
* identifier[patientNumber] -> "mercurius-core-rubriek-4" "patientnummer"
* identifier[externalPatientNumber] -> "mercurius-core-rubriek-30" "expatientnr1"
* identifier[externalPatientNumber] -> "mercurius-core-rubriek-32" "expatientnr2"
  * assigner -> "mercurius-core-rubriek-31" "extpatientnr1loc"
  * assigner -> "mercurius-core-rubriek-33" "extpatientnr2loc"
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
* deceasedDateTime -> "mercurius-core-rubriek-102" "datumoverlijden"
* deceasedDateTime -> "mercurius-core-rubriek-103" "tijdoverlijden"
* address
  * line
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName]
      * valueString -> "mercurius-core-rubriek-16" "straat"
    * extension[http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber]
      * valueString -> "mercurius-core-rubriek-17" "huisnummer"
  * city -> "mercurius-core-rubriek-19" "woonplaats"
  * postalCode -> "mercurius-core-rubriek-18" "postcode"
  * postalCode -> "mercurius-core-rubriek-20" "postcodebuitenland"