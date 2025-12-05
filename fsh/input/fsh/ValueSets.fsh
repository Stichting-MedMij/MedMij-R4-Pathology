// All custom ValueSets used in Pathology

CodeSystem: Gender_CS
Id: Gender
Title: "Gender CodeSystem."
Description: "Codes for the gender of the patient."
* insert DefaultNarrative
* ^url = $GenderCodeSystemURL
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $GenderCodeSystemOID
* ^name = "Gender"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 2
* #m "Man"
* #v "Vrouw"

ValueSet: Gender_VS
Id: Gender
Title: "Gender ValueSet."
Description: "ValueSet for the gender of the patient."
* insert DefaultNarrative
* ^url = $GenderValueSetURL
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $GenderValueSetOID
* ^name = "Gender"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system $GenderCodeSystemURL