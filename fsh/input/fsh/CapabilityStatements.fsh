// CapabilityStatements based in Pathology

Instance: path-Retrieve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "path Retrieve"
* status = #draft
* date = "2026-02-26"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a client to fulfill the 'Retrieve pathology reports' transaction within Pathology."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #client
  * documentation = "Minimal requirements for a client to fulfill the 'Retrieve pathology reports' transaction (system role: PA-PRR-1.0.0-alpha.2)."
  * resource[+]
    * type = #DiagnosticReport
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/path-Report"
    * documentation = "If the client always retrieves the ServiceRequest, Observation, Practitioner(Role) and Specimen resources referenced from the DiagnosticReport via individual `read` interactions, support of the `_include` values specified on `.searchInclude` is optional."
    * interaction
      * code = #search-type
    * searchInclude[0] = "DiagnosticReport:based-on"
    * searchInclude[1] = "DiagnosticReport:result"
    * searchInclude[2] = "DiagnosticReport:results-interpreter"
    * searchInclude[3] = "DiagnosticReport:specimen"
    * searchParam[0]
      * name = "category"
      * type = #token
    * searchParam[1]
      * name = "status"
      * type = #token
      * documentation = "Only complete and verified reports are to be exchanged, hence only searching on the value *final* needs to be supported."
  * resource[+]
    * type = #ServiceRequest
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/path-Request"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the client always retrieves the ServiceRequest resource via the `_include` on `DiagnosticReport:based-on`, support of the `read` interaction is optional."
  * resource[+]
    * type = #Observation
    * supportedProfile[0] = "http://medmij.nl/fhir/StructureDefinition/path-Report.ClinicalInformation"
    * supportedProfile[1] = "http://medmij.nl/fhir/StructureDefinition/path-Report.Macroscopy"
    * supportedProfile[2] = "http://medmij.nl/fhir/StructureDefinition/path-Report.Microscopy"
    * supportedProfile[3] = "http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the client always retrieves the Observation resources via the `_include` on `DiagnosticReport:result`, support of the `read` interaction is optional."
  * resource[+]
    * type = #Specimen
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the client always retrieves the Specimen resources via the `_include` on `DiagnosticReport:specimen`, support of the `read` interaction is optional."
  * resource[+]
    * type = #Patient
    * supportedProfile[0] = "http://medmij.nl/fhir/StructureDefinition/path-Patient"
    * supportedProfile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile[0] = "http://medmij.nl/fhir/StructureDefinition/path-Request.Requester"
    * supportedProfile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server includes this (secondary) resource in the Bundle, the client does not need to execute a `read`. However, since a server may choose to not include it in the Bundle, support of the `read` interaction is mandatory for a client."
  * interaction
    * code = #search-system

Instance: path-Serve
InstanceOf: CapabilityStatement
Usage: #definition
* insert DefaultNarrativeInstance
* name = "path Serve"
* status = #draft
* date = "2026-02-26"
* insert PublisherAndContactInstance
* description = "This CapabilityStatement describes the minimal requirements for a server to fulfill the 'Serve pathology reports' transaction within Pathology."
* purpose = "This CapabilityStatement is informative in nature and does not represent the minimum or maximum set of capabilities the client or server should support. The aim is to design the CapabilityStatement as complete as possible, however for the exact set of capabilities the implementation guide should be consulted."
* insert CopyrightInstance
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest
  * mode = #server
  * documentation = "Minimal requirements for a server to fulfill the 'Serve pathology reports' transaction (system role: PA-PRB-1.0.0-alpha.2)."
  * resource[+]
    * type = #DiagnosticReport
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/path-Report"
    * interaction
      * code = #search-type
    * searchInclude[0] = "DiagnosticReport:based-on"
    * searchInclude[1] = "DiagnosticReport:result"
    * searchInclude[2] = "DiagnosticReport:results-interpreter"
    * searchInclude[3] = "DiagnosticReport:specimen"
    * searchParam[0]
      * name = "category"
      * type = #token
    * searchParam[1]
      * name = "status"
      * type = #token
      * documentation = "Only complete and verified reports are to be exchanged, hence only searching on the value *final* needs to be supported."
  * resource[+]
    * type = #ServiceRequest
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/path-Request"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Observation
    * supportedProfile[0] = "http://medmij.nl/fhir/StructureDefinition/path-Report.ClinicalInformation"
    * supportedProfile[1] = "http://medmij.nl/fhir/StructureDefinition/path-Report.Macroscopy"
    * supportedProfile[2] = "http://medmij.nl/fhir/StructureDefinition/path-Report.Microscopy"
    * supportedProfile[3] = "http://medmij.nl/fhir/StructureDefinition/path-Report.ProtocolDataItem"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Specimen
    * supportedProfile = "http://medmij.nl/fhir/StructureDefinition/path-Request.Specimen"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Patient
    * supportedProfile[0] = "http://medmij.nl/fhir/StructureDefinition/path-Patient"
    * supportedProfile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #PractitionerRole
    * supportedProfile[0] = "http://medmij.nl/fhir/StructureDefinition/path-Request.Requester"
    * supportedProfile[1] = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-PractitionerRole"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Practitioner
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * resource[+]
    * type = #Organization
    * supportedProfile = "http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization"
    * documentation = "This is a secondary resource that needs to be resolvable, either by supporting a `read` interaction or explicitly including it in the Bundle."
    * interaction
      * code = #read
      * documentation = "If the server always includes this resource in the Bundle, support of the `read` interaction is optional."
  * interaction
    * code = #search-system