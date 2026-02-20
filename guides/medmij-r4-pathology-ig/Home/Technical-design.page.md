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