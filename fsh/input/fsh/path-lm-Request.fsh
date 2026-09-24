// Logical Model for Request

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