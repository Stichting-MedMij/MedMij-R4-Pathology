// All custom CodeSystems used in Pathology

CodeSystem: MercuriusGender_CS
Id: MercuriusGender
Title: "MercuriusGender CodeSystem."
Description: "Codes for the gender of the patient as used in Mercurius."
* insert DefaultNarrative
* ^url = $MercuriusGenderCodeSystemURL
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $MercuriusGenderCodeSystemOID
* ^name = "MercuriusGender"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 2
* #m "Man"
* #v "Vrouw"

CodeSystem: RequestType_CS
Id: RequestType
Title: "RequestType CodeSystem."
Description: "Codes for the type of the request."
* insert DefaultNarrative
* ^url = $RequestTypeCodeSystemURL
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $RequestTypeCodeSystemOID
* ^name = "RequestType"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 10
* #1 "normaal"
* #2 "spoed"
* #3 "advies"
* #4 "panel"
* #5 "consult tbv derden"
* #6 "revisie tbv derden"
* #7 "moleculair onderzoek"
* #8 "project"
* #9 "oud"
* #10 "onderzoek tbv derden"