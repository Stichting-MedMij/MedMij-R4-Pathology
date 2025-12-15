// All custom ValueSets used in Pathology

ValueSet: MercuriusGender_VS
Id: MercuriusGender
Title: "MercuriusGender ValueSet."
Description: "ValueSet for the gender of the patient as used in Mercurius."
* insert DefaultNarrative
* ^url = $MercuriusGenderValueSetURL
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $MercuriusGenderValueSetOID
* ^name = "Gender"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system $MercuriusGenderCodeSystemURL

ValueSet: RequestType_VS
Id: RequestType
Title: "RequestType ValueSet."
Description: "ValueSet for the type of the request."
* insert DefaultNarrative
* ^url = $RequestTypeValueSetURL
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $RequestTypeValueSetOID
* ^name = "RequestType"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system $RequestTypeCodeSystemURL