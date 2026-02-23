---
topic: TD
---

# Technical design

## Introduction
This technical design provides the technical specification of the Pathology (Dutch: Pathologie or PiPP) standard. This standard is based on the national infrastructure [Mercurius](https://www.palga.nl/nieuws/infrasructuur) for exchanging pathology data defined and maintained by [Palga](https://www.palga.nl/).

This technical design is the technical counterpart of the {{pagelink: FO, text: functional design}}. The FHIR version used for this IG is R4 (4.0.1).

Note that in addition to this design, the (technical) guidelines as specified in the [MedMij FHIR IG by Nictiz](https://informatiestandaarden.nictiz.nl/wiki/MedMij:IG:V1/FHIR_IG) apply.

## Actors involved
| Actor | | System | | FHIR CapabilityStatement |
| --- | --- | --- | --- | --- | --- |
| **Name** | **Description** | **Name** | **Description** | **Name** | **Description** |
| Patient | The user of a personal healthcare environment | PHR | Personal health record | [CapabilityStatement Retrieve pathology reports](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/path-Retrieve&scope=medmij.fhir.nl.r4.pathology@1.0.0-alpha.1) | FHIR client requirements |
| Healthcare provider | The user of a XIS | XIS | Healthcare information system | [CapabilityStatement Serve pathology reports](https://simplifier.net/resolve?canonical=http://medmij.nl/fhir/CapabilityStatement/path-Serve&scope=medmij.fhir.nl.r4.pathology@1.0.0-alpha.1) | FHIR server requirements |

**Table 1: Actors**

## Boundaries and relationships
This technical design includes use cases for the exchange of pathology reports between healthcare providers (e.g. labs) and patients (e.g. in a PHR setting).

This technical design assumes that a PHR is able to make a connection to the right XIS that contains the patient's information. It does not provide information on finding the right source system nor does it provide information about security. These infrastructure and interface specifications are described in the [MedMij Afsprakenstelsel](https://afsprakenstelsel.medmij.nl/). In particular, each transaction is performed in the context of a specific authenticated patient, which has been established using the authentication mechanisms outlined in the MedMij Afsprakenstelsel (also see the [MedMij FHIR IG by Nictiz](https://informatiestandaarden.nictiz.nl/wiki/MedMij:IG:V1/FHIR_IG#Afsprakenstelsel)), i.e. via an OAuth2 token. Each XIS gateway is required to perform filtering based on the patient associated with the context for the request, so only the records associated with the authenticated patient are returned. For this reason, search parameters should not be included for patient identification.

## <a name="RelatingFHIRToFunctionalCounterpart"></a> Relating FHIR (profiles) to its functional counterpart
The functional model of Mercurius is represented by {{pagelink: LogicalModelsIndex, text: Logical Models}}. For each concept in these Logical Models, an id is assigned by MedMij based on the corresponding element in the Mercurius dataset. These ids are also added as mappings in the {{pagelink: FHIRProfilesIndex, text: FHIR profiles}}, and therefore form the linking pin between Logical Models and FHIR profiles. If no such mapping is possible for a certain element in a FHIR profile, guidance is provided to indicate how that element should be handled.

## Use cases

### Use case: Retrieve Pathology Reports
In this use case, available pathology reports for a patient are retrieved based on a search on DiagnosticReport.

| Transaction group | Transaction | Actor | System role |
| --- | --- | --- | --- | --- |
| Pathology reports (PULL) | Retrieve pathology reports | Patient (using a PHR) | MM-1.0-PRR-FHIR |
| Pathology reports (PULL) | Serve pathology reports | Healthcare provider (using a XIS) | MM-1.0-PRB-FHIR |

**Table 2: Transactions within use case Retrieve Pathology Reports**

##### PHR: request message
The PHR executes an HTTP search conform the [FHIR specification](https://hl7.org/fhir/R4/search.html) against the DiagnosticReport endpoint of the XIS using the following URL:

`GET [base]/DiagnosticReport{?[parameters]}`

Here, `[parameters]` represents a series of encoded name-value pairs representing the filter for the query. Since only complete and verified pathology reports are to be exchanged in this use case, the PHR SHALL always include the search parameter `category` with value *http://snomed.info/sct|108257001* in their request, as well as the search parameter `status` with value *final*:

`GET [base]/DocumentReference?category=http://snomed.info/sct|108257001&status=current{&[additional parameters]}`

The search parameters listed in the table below SHALL be supported by the XIS and MAY be supported by the PHR, with the exception of the `category` and `status` parameters, which SHALL be supported by PHRs as well (as these are akways part of the search query in this transaction).

Note that the PHR MAY request that the XIS returns resources related to the search results, in order to reduce the overall network delay of repeated retrievals of related resources. Supporting the `include` of the Observation, Practitioner, PractitionerRole, ServiceRequest and Specimen resources is required for the XIS, while support of the `include` of the Patient resource is optional. However, all resources referenced per literal reference SHALL be resolvable per the [MedMij FHIR IG by Nictiz](https://informatiestandaarden.nictiz.nl/wiki/MedMij:IG:V1/FHIR_IG#Including_referenced_resources).

| Description | FHIR search parameter | Examples |
| --- | --- | --- | --- | --- | --- |
| Search on the category of the DiagnosticReport. | `category` | Retrieve all DiagnosticReport resources that correspond to a pathology report (i.e. a {{pagelink: LogicalModelsIndex, text: Report, anchor: PathLmReport}} CIM). <br/> `GET [base]/DiagnosticReport?category=http://snomed.info/sct|108257001` |
| Search on the status of the DiagnosticReport. | `status` | Retrieve all DiagnosticReport resources that correspond to a complete and verified report. <br/> `GET [base]/DiagnosticReport?status=final` |
| Include the request (i.e. {{pagelink: LogicalModelsIndex, text: Request, anchor: PathLmRequest}} CIM) on which the pathology report is based. | `_include=DiagnosticReport:based-on` | Retrieve all DiagnosticReport resources as well as the ServiceRequest resources on which they are based. <br/> `GET [base]/DiagnosticReport?_include=DiagnosticReport:based-on` |
| Include the specimens (i.e. {{pagelink: LogicalModelsIndex, text: Specimen, anchor: PathLmRequest}} concept) that have been examined in the pathology study the report corresponds to. | `_include=DiagnosticReport:specimen` | Retrieve all DiagnosticReport resources as well as the Specimen resources on which they are based. <br/> `GET [base]/DiagnosticReport?_include=DiagnosticReport:specimen` |
| Include the observations (i.e. {{pagelink: LogicalModelsIndex, text: ClinicalInformation, anchor: PathLmReport}}, {{pagelink: LogicalModelsIndex, text: Macroscopy, anchor: PathLmReport}}, {{pagelink: LogicalModelsIndex, text: Microscopy, anchor: PathLmReport}} and {{pagelink: LogicalModelsIndex, text: ProtocolDataItem, anchor: PathLmReport}} concepts) that are part of the report. | `_include=DiagnosticReport:result` | Retrieve all DiagnosticReport resources as well as the Observation resources that are part of the reports. <br/> `GET [base]/DiagnosticReport?_include=DiagnosticReport:result` |
| Include the pathologist (i.e. {{pagelink: LogicalModelsIndex, text: Pathologist, anchor: PathLmReport}} concept) who authorized the report. | `_include=DiagnosticReport:results-interpreter` | Retrieve all DiagnosticReport resources as well as the Practitioner(Role) resources corresponding to the pathologists who authorized the reports. <br/> `GET [base]/DiagnosticReport?_include=DiagnosticReport:results-interpreter` |

**Table 3: Supported search parameters**

Even though the different `include`s specified in the above table are optional for the PHR to be added to the request, it is recommended to add all of these to minimize the number of individual `read` operations needed to retrieve all relevant data. This results in the following request:

`GET [base]/DocumentReference?category=http://snomed.info/sct|108257001&status=current&_include=DiagnosticReport:based-on&_include=DiagnosticReport:specimen&_include=DiagnosticReport:result&_include=DiagnosticReport:results-interpreter`

##### XIS: response message
The XIS returns an HTTP Status code appropriate to the processing outcome as well as a Bundle, with `Bundle.type` equal to *searchset*, including the resources matching the search query. The resources included in the Bundle SHALL conform the the profiles listed {{pagelink: FHIRProfilesIndex, text: here}}.