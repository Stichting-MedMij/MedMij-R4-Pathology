// All LogicalModels used in Pathology

Logical: LmPatient
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Patient
Title: "Patient"
Description: "The person whose human tissue is analyzed in a pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Patient building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Patiënt"
* Name 1..1 BackboneElement "Name" "Name of the patient."
  * ^alias = "Naam"
  * Initials 1..1 string "Initials" "Initials of the patient in capitals, divided by dots."
    * ^alias = "Voorletters"
  * FamilyName 1..1 BackboneElement "Family name" "Family name of the patient."
    * ^alias = "Geslachtsnaam"
    * Prefix 0..1 string "Prefix" "Prefix to the last name of the patient."
      * ^alias = "Voorvoegsels"
    * LastName 1..1 string "Last name" "Last name of the patient."
      * ^alias = "Achternaam"
* Gender 1..1 code "Gender" "Gender of the patient."
* Gender from MercuriusGender_VS (required)
  * ^alias = "Geslacht"
* BirthInformation 1..1 BackboneElement "Birth information" "Information on the birth of the patient."
  * ^alias = "GeboorteInformatie"
  * BirthDate 1..1 date "Birth date" "Birth date."
    * ^alias = "Geboortedatum"
  * BirthPlace 0..1 string "Birth place" "Place of birth."
    * ^alias = "Geboorteplaats"
    * ^comment = "The place of birth is part of the CIS personalia as delivered by the CIS-GBA."
  * BirthCountry 0..1 string "Birth country" "Country of birth."
    * ^alias = "Geboorteland"
* Address 1..1 BackboneElement "Address" "Address of the patient."
  * ^alias = "Adres"
  * Street 0..1 string "Street" "Street name of the address."
    * ^alias = "Straat"
  * HouseNumber 0..1 string "House number" "House number of the address."
    * ^alias = "Huisnummer"
  * PostalCode 1..1 string "Postal code" "Postal code, either Dutch or foreign."
    * ^alias = "Postcode"
    * ^comment = """
    Dutch postal codes contain 4 numerical characters, a space and 2 letters in uppercase (nnnn AA). Codes attain values between 1000 and 9999. If the postal code is unknown, the dummy _0000 XX_ is used.
    
    Foreign postal codes are expressed in free text. If the postal code is unknown, the dummy _0009 XX_ is used.
    """
  * City 1..1 string "City" "Place name."
    * ^alias = "Woonplaats"

Logical: LmRequest
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Request
Title: "Request"
Description: "Request for a pathology study to be performed by a certain laboratory."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Request building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Aanvraag"
* RequestType 1..1 CodeableConcept "Request type" "This additional typing of the examination can provide a trigger to avoid sending to ZIS, CIS, National Dababase or others, or to send a consultation report (electronically) to another lab."
* RequestType from MercuriusRequestType_VS (required)
  * ^alias = "SoortAanvraag"
  * ^defaultValueCodeableConcept.coding.system = "http://medmij.nl/fhir/CodeSystem/MercuriusRequestType"
  * ^defaultValueCodeableConcept.coding.code = #normaal
* HealthScreeningType 1..1 CodeableConcept "Health screening type" "Type of national trial for this request."
* HealthScreeningType from MercuriusHealthScreeningType_VS (required)
  * ^alias = "BVOSoort"
  * ^defaultValueCodeableConcept.coding.system = "http://medmij.nl/fhir/CodeSystem/MercuriusHealthScreeningType"
  * ^defaultValueCodeableConcept.coding.code = #0
* Requester 1..1 BackboneElement "Requester" "Requester of the pathology study."
  * ^alias = "Aanvrager"
  * RequesterName 1..1 string "Requester name" "Name of the requester."
    * ^alias = "AanvragerNaam"
  * Specialty 1..1 CodeableConcept "Specialty" "Specialty of the requester."
  * Specialty from MercuriusSpecialty_VS (extensible)
    * ^alias = "Specialisme"
  * Hospital 0..1 string "Hospital" "Name of the hospital from where the specimen is sent."
    * ^alias = "Ziekenhuis"
  * Location 0..1 string "Location" "Location of requesting institute."
    * ^alias = "Locatie"
* ClinicalQuestion 1..1 string "Clinical question" "Clinical request information."
  * ^alias = "KlinischeVraag"
* Specimen 1..1 BackboneElement "Specimen" "Specimen that will be examined by a laboratory."
  * ^alias = "Monster"
  * SpecimenMaterial 1..1 string "Specimen material" "Type of specimen."
    * ^alias = "AardMateriaal"
  * CollectionDate 0..1 date "Collection date" "Date when specimen is taken from patient."
    * ^alias = "DatumAfname"
  * ReceivedDate 1..1 date "Received date" "Date when specimen is received at the laboratory."
    * ^alias = "DatumOntvangst"
  * CollectionMethod 0..1 string "Collection method" "The way the specimen is collected (biopsy, resection, etc.)."
    * ^alias = "Verkrijgingswijze"

Logical: LmReport
Parent: http://hl7.org/fhir/StructureDefinition/Element
Id: path-lm-Report
Title: "Report"
Description: "Pathology report which contains the findings and interpretation of a pathology study."
* insert DefaultNarrative
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Report building block for patient use cases in the context of the information standard Pathology (Pathologie)."
* insert Copyright
* ^abstract = true
* .
  * ^alias = "Verslag"
* ReportIdentifier 1..1 Identifier "Report identifier" "Identifier of the pathology report assigned by the laboratory doing the analysis."
  * ^alias = "VerslagIdentificatienummer"
  * ^comment = "This identifier attains a value of the form _[TCSB]YY-nnnnn_ or _[TCSB]YY-nnnnnn_ (based on the laboratory the report originates from), e.g. T26-012345."
* Authorizer 1..1 string "Authorizer" "Name of the pathologist who has authorized the report."
  * ^alias = "Autorisator"
* AuthorizationDate 1..1 date "Authorization date" "Date of authorization."
  * ^alias = "DatumAutorisatie"
* ClinicalInformation 0..1 string "Clinical information" "Clinical information section of the report."
  * ^alias = "KlinischeGegevens"
* Macroscopy 0..1 string "Macroscopy" "Macroscopy-related results."
  * ^alias = "Macroscopie"
* Microscopy 1..1 string "Microscopy" "Microscopy-related results."
  * ^alias = "Microscopie"
* Conclusion 1..1 string "Conclusion" "Conclusion of the report."
  * ^alias = "Conclusie"
* ProtocolData 0..* BackboneElement "Protocol data" "Data from National Palga Protocols, created in the Palga Protocol Module."
  * ^alias = "Protocoldata"
  * ProtocolItemName 1..1 CodeableConcept "Protocol item name" "Name of the protocol item, expressed by a SNOMED code."
  * ProtocolItemResult[x] 1..1 CodeableConcept or string or Quantity or dateTime "Protocol item result" "Result of the protocol item."

Mapping: LmPatientMercuriusCore
Source: LmPatient
Target: "TODO"
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
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
  * BirthDate -> "mercurius-core-rubriek-13" "geboorteeeuw (implicit)"
  * BirthPlace -> "mercurius-core-rubriek-14" "geboorteplaats"
  * BirthCountry -> "mercurius-core-rubriek-15" "geboorteland"
* Address
  * Street -> "mercurius-core-rubriek-16" "straat"
  * HouseNumber -> "mercurius-core-rubriek-17" "huisnummer"
  * PostalCode -> "mercurius-core-rubriek-18" "postcode"
  * PostalCode -> "mercurius-core-rubriek-20" "postcodebuitenland"
  * City -> "mercurius-core-rubriek-19" "woonplaats"

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
* ClinicalQuestion -> "mercurius-core-rubriek-139" "klinischevraag"
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
* ReportIdentifier -> "mercurius-core-rubriek-3" "rapnaam"
* Authorizer -> "mercurius-core-rubriek-41" "autorisator"
* AuthorizationDate -> "mercurius-core-rubriek-44" "datumautorisatie"
* ClinicalInformation -> "mercurius-core-rubriek-142" "klinischegegevens"
* Macroscopy -> "mercurius-core-rubriek-184" "macroscopie"
* Microscopy -> "mercurius-core-rubriek-222" "microscopie"
* Conclusion -> "mercurius-core-rubriek-224" "conclusie"
* ProtocolData -> "mercurius-core-rubriek-308" "protocoldata"

Mapping: LmReportSNOMED
Source: LmReport
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* ClinicalInformation -> "404684003" "klinische bevinding"
* Macroscopy -> "168126000" "Sample macroscopy"
* Microscopy -> "117259009" "microscopisch onderzoek"