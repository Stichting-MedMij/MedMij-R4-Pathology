// All LogicalModels used in Pathology

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

Logical: PathLmRequest
Parent: http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-Base
Id: path-lm-Request
Title: "Request"
Description: "Request for a pathology study to be performed by a certain laboratory."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $PathLmRequestOID
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Request Clinical Information Model (CIM) for patient use cases in the context of Pathology."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Aanvraag"
* IdentificationNumber 1..1
  * ^short = "Request identifier"
  * ^definition = "Identifier of the request for a pathology study."
  * ^alias = "AanvraagIdentificatienummer"
  * ^comment = "This concept is often referred to as RequestIdentifier.\n\nEven though the ReportIdentifier (i.e. _rapnaam_, mercurius-core-rubriek-3) is assigned by the laboratory doing the analysis (and thus not by the requester), the RequestIdentifier is populated with its value as well, as the request and report are always directly linked to each other in Mercurius. In particular, this identifier attains a value of the form _[TCSB]YY-nnnnn_ or _[TCSB]YY-nnnnnn_ (based on the laboratory the report originates from), e.g. T26-012345."
* Patient only Reference(PathLmPatient)
* HealthcareProvider 0..0
* Effective[x] 0..0
* CareType 1..*
  * ^comment = "At least code _0388_ ('Medisch specialisten, pathologische anatomie') SHALL be conveyed as care type."
* RequestType 1..1 CodeableConcept "Request type" "This typing of the examination provides additional context for the request."
* RequestType from MercuriusRequestType_VS (required)
  * ^alias = "SoortAanvraag"
  * ^defaultValueCodeableConcept.coding.system = $MercuriusRequestTypeCodeSystemURL
  * ^defaultValueCodeableConcept.coding.code = #normaal
* HealthScreeningType 1..1 CodeableConcept "Health screening type" "Type of national trial for this request."
* HealthScreeningType from MercuriusHealthScreeningType_VS (required)
  * ^alias = "BVOSoort"
  * ^defaultValueCodeableConcept.coding.system = $MercuriusHealthScreeningTypeCodeSystemURL
  * ^defaultValueCodeableConcept.coding.code = #0
* Requester 1..1 BackboneElement "Requester" "Requester of the pathology study."
  * ^alias = "Aanvrager"
  * RequesterName 1..1 string "Requester name" "Name of the requester."
    * ^alias = "AanvragerNaam"
  * Specialty 0..1 CodeableConcept "Specialty" "Specialty of the requester."
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
  * SpecimenIdentifier 1..1 Identifier "Specimen identifier" "Identifier of the specimen."
    * ^alias = "MonsterIdentificatienummer"
    * ^comment = "As the specimen is always directly linked to a request in Mercurius, the SpecimenIdentifier value equals the RequestIdentifier value, appended with _-0_. This appendage ensures that the identifier of the primary specimen is easily distinguishable from each sample identifier (as the latter equals the RequestIdentifier, appended with _-[SampleNumber]_). In particular, this identifier attains a value of the form _[TCSB]YY-nnnnn-0_ or _[TCSB]YY-nnnnnn-0_ (based on the laboratory the report originates from), e.g. T26-012345-0."
  * SpecimenMaterial 1..1 CodeableConcept "Specimen material" "Type of specimen."
    * ^alias = "AardMateriaal"
    * ^comment = "The (string) value present in the source system is translated to a SNOMED CT code using the [Palga On-line Thesaurus](https://www.palga.nl/voor-pathologen/palga-on-line-thesaurus), if possible."
  * CollectionDate 0..1 date "Collection date" "Date when specimen is taken from patient."
    * ^alias = "DatumAfname"
  * ReceivedDate 1..1 date "Received date" "Date when specimen is received at the laboratory."
    * ^alias = "DatumOntvangst"
  * CollectionMethod 0..1 CodeableConcept "Collection method" "The way the specimen is collected (biopsy, resection, etc.)."
    * ^alias = "Verkrijgingswijze"
    * ^comment = "The (string) value present in the source system is translated to a SNOMED CT code using the [Palga On-line Thesaurus](https://www.palga.nl/voor-pathologen/palga-on-line-thesaurus), if possible."
  * Sample 0..* BackboneElement "Sample" "Sample taken from the primary specimen. Each sample is sent to the laboratory in a different container."
    * ^alias = "Sample"
    * ^comment = "If only a single sample is taken and examined by the laboratory, this element SHOULD not be populated, as the primary specimen and sample coincide in that case (and in particular, no sample number is assigned within Mercurius)."
    * SampleNumber 1..1 integer "Sample number" "Number of the sample."
      * ^alias = "Samplenummer"
      * ^comment = "If a Roman numeral is assigned to a sample in Mercurius, it SHALL be converted to an integer."

Logical: PathLmReport
Parent: http://medmij.nl/fhir/StructureDefinition/medmij-core-lm-Base
Id: path-lm-Report
Title: "Report"
Description: "Pathology report which contains the findings and interpretation of a pathology study."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $PathLmReportOID
* ^status = #draft
* insert PublisherAndContact
* ^purpose = "This LogicalModel represents the Report Clinical Information Model (CIM) for patient use cases in the context of Pathology."
* insert Copyright
* ^abstract = false
* .
  * ^alias = "Verslag"
* IdentificationNumber 1..1
  * ^short = "Report identifier"
  * ^definition = "Identifier of the pathology report assigned by the laboratory doing the analysis."
  * ^alias = "VerslagIdentificatienummer"
  * ^comment = "This concept is often referred to as ReportIdentifier.\n\nThis identifier attains a value of the form _[TCSB]YY-nnnnn_ or _[TCSB]YY-nnnnnn_ (based on the laboratory the report originates from), e.g. T26-012345."
* Patient only Reference(PathLmPatient)
* HealthcareProvider 0..0
* Effective[x] 1..1
* EffectiveDateTime 1..1
  * ^short = "Authorization date"
  * ^definition = "Date of authorization."
  * ^alias = "DatumAutorisatie"
  * ^comment = "This concept is often referred to as AuthorizationDate.\n\nEven though this element has data type dateTime, in practice only dates (without time) will be conveyed."
* EffectivePeriod 0..0
* CareType 1..*
  * ^comment = "At least code _0388_ ('Medisch specialisten, pathologische anatomie') SHALL be conveyed as care type."
* Authorizer 1..1 string "Authorizer" "Name of the pathologist who has authorized the report."
  * ^alias = "Autorisator"
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
  * ProtocolItemName 1..1 CodeableConcept "Protocol item name" "Name of the protocol item, expressed by a SNOMED CT code."
    * ^alias = "ProtocolitemNaam"
  * ProtocolItemResult[x] 1..1 CodeableConcept or string or integer or Quantity or Range or dateTime "Protocol item result" "Result of the protocol item."
    * ^alias = "ProtocolitemResultaat"
  * SampleNumber 0..1 integer "Sample number" "The number of the sample to which this protocol item corresponds."
    * ^alias = "Samplenummer"

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

Mapping: PathLmRequestMercuriusCore
Source: PathLmRequest
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* IdentificationNumber -> "mercurius-core-rubriek-3" "rapnaam"
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

Mapping: PathLmRequestMedMij-100-alpha3
Source: PathLmRequest
Id: path-dataset-100-alpha3-20260923
Title: "Dataset Pathologie MedMij 1.0.0-alpha.3 20260923"
* . -> "path-dataelement-6" "Request"
* Requester -> "path-dataelement-7" "Requester"
* Specimen -> "path-dataelement-8" "Specimen"
  * SpecimenIdentifier -> "path-dataelement-14" "SpecimenIdentifier"
  * Sample -> "path-dataelement-15" "Sample"
    * SampleNumber -> "path-dataelement-16" "SampleNumber"

Mapping: PathLmRequestEHDSImagingReport
Source: PathLmRequest
Target: "https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSImagingReport.html"
Id: ehds-imagingreport-v1.0.0
Title: "EHDS ImagingReport v1.0.0"
* . -> "EHDSImagingReport" "EHDSImagingReport"
* . -> "EHDSImagingReport.body.orderInformation" "orderInformation"
* IdentificationNumber -> "EHDSImagingReport.body.orderInformation.orderId" "orderId"
* Patient -> "EHDSImagingReport.header.subject" "subject"
* CareType -> "EHDSImagingReport.header.serviceSpecialty" "serviceSpecialty"
* Requester -> "EHDSImagingReport.body.orderInformation.orderPlacer" "orderPlacer"
  * RequesterName -> "EHDSImagingReport.body.orderInformation.orderPlacerEHDSHealthProfessional" "orderPlacerEHDSHealthProfessional (implicit, actual mapping is on orderPlacerEHDSHealthProfessional.name)"
  * Specialty -> "EHDSImagingReport.body.orderInformation.orderPlacerEHDSHealthProfessional" "orderPlacerEHDSHealthProfessional (implicit, actual mapping is on orderPlacerEHDSHealthProfessional.professionalRole.specialty)"
  * Hospital -> "EHDSImagingReport.body.orderInformation.orderPlacerEHDSHealthProfessional" "orderPlacerEHDSHealthProfessional (implicit, actual mapping is on orderPlacerEHDSHealthProfessional.professionalRole.organisation.name)"
  * Hospital -> "EHDSImagingReport.body.orderInformation.orderPlacerEHDSOrganisation" "orderPlacerEHDSOrganisation (implicit, actual mapping is on orderPlacerEHDSOrganisation.name)"
* ClinicalQuestion -> "EHDSImagingReport.body.orderInformation.clinicalQuestion" "clinicalQuestion"
* Specimen -> "EHDSImagingReport.body.specimen" "specimen"

Mapping: PathLmRequestEHDSSpecimen
Source: PathLmRequest
Target: "https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSSpecimen.html"
Id: ehds-specimen-v1.0.0
Title: "EHDS Specimen v1.0.0"
* Specimen -> "EHDSSpecimen" "EHDSSpecimen"
  * SpecimenMaterial -> "EHDSSpecimen.type" "type"
  * CollectionDate -> "EHDSSpecimen.collection.collectedDateTime" "collectedDateTime"
  * ReceivedDate -> "EHDSSpecimen.receivedDate" "receivedDate"
  * CollectionMethod -> "EHDSSpecimen.collection.method" "method"

Mapping: PathLmReportMercuriusCore
Source: PathLmReport
Id: mercurius-core-dataset-2-0
Title: "Mercurius Core Dataset 2.0"
* IdentificationNumber -> "mercurius-core-rubriek-3" "rapnaam"
* EffectiveDateTime -> "mercurius-core-rubriek-44" "datumautorisatie"
* Authorizer -> "mercurius-core-rubriek-41" "autorisator"
* ClinicalInformation -> "mercurius-core-rubriek-142" "klinischegegevens"
* Macroscopy -> "mercurius-core-rubriek-184" "macroscopie"
* Microscopy -> "mercurius-core-rubriek-222" "microscopie"
* Conclusion -> "mercurius-core-rubriek-224" "conclusie"
* ProtocolData -> "mercurius-core-rubriek-308" "protocoldata"

Mapping: PathLmReportMedMij-100-alpha3
Source: PathLmReport
Id: path-dataset-100-alpha3-20260923
Title: "Dataset Pathologie MedMij 1.0.0-alpha.3 20260923"
* . -> "path-dataelement-10" "Report"
* ProtocolData
  * ProtocolItemName -> "path-dataelement-11" "ProtocolItemName"
  * ProtocolItemResult[x] -> "path-dataelement-12" "ProtocolItemResult[x]"
  * SampleNumber -> "path-dataelement-13" "SampleNumber"

Mapping: PathLmReportSNOMED
Source: PathLmReport
Target: "http://snomed.info/sct"
Id: SNOMED
Title: "SNOMED CT"
* ClinicalInformation -> "404684003" "klinische bevinding"
* Macroscopy -> "168126000" "Sample macroscopy"
* Microscopy -> "117259009" "microscopisch onderzoek"

Mapping: PathLmReportEHDSImagingReport
Source: PathLmReport
Target: "https://www.xt-ehr.eu/fhir/models/1.0.0/en/StructureDefinition-EHDSImagingReport.html"
Id: ehds-imagingreport-v1.0.0
Title: "EHDS ImagingReport v1.0.0"
* . -> "EHDSImagingReport" "EHDSImagingReport"
* IdentificationNumber -> "EHDSImagingReport.header.identifier" "identifier"
* Patient -> "EHDSImagingReport.header.subject" "subject"
* EffectiveDateTime -> "EHDSImagingReport.header.date" "date"
* CareType -> "EHDSImagingReport.header.serviceSpecialty" "serviceSpecialty"
* Authorizer -> "EHDSImagingReport.header.authorEHDSHealthProfessional" "authorEHDSHealthProfessional (implicit, actual mapping is on authorEHDSHealthProfessional.name)"
* ClinicalInformation -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.valueString)"
* Macroscopy -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.valueString)"
* Microscopy -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.valueString)"
* Conclusion -> "EHDSImagingReport.body.examinationReport.conclusion.impression" "impression"
* ProtocolData -> "EHDSImagingReport.body.examinationReport.resultsEHDSObservation" "resultsEHDSObservation (implicit, actual mapping is on resultsEHDSObservation.result.value)"