// All custom ValueSets used in Pathology

ValueSet: MercuriusGender_VS
Id: MercuriusGender
Title: "MercuriusGender ValueSet."
Description: "ValueSet for the gender of the patient as defined by Palga and used in Mercurius."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MercuriusGenderValueSetOID
* ^name = "MercuriusGender"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system MercuriusGender_CS

ValueSet: MercuriusHealthScreeningType_VS
Id: MercuriusHealthScreeningType
Title: "MercuriusHealthScreeningType ValueSet."
Description: "ValueSet for the type of national trial for the request as defined by Palga and used in Mercurius."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MercuriusHealthScreeningTypeValueSetOID
* ^name = "MercuriusHealthScreeningType"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system MercuriusHealthScreeningType_CS

ValueSet: MercuriusRequestType_VS
Id: MercuriusRequestType
Title: "MercuriusRequestType ValueSet."
Description: "ValueSet for the type of the request as defined by Palga and used in Mercurius."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MercuriusRequestTypeValueSetOID
* ^name = "MercuriusRequestType"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system MercuriusRequestType_CS

ValueSet: MercuriusSpecialty_VS
Id: MercuriusSpecialty
Title: "MercuriusSpecialty ValueSet."
Description: "ValueSet for the type of the request as defined by Palga and used in Mercurius."
* insert DefaultNarrative
* ^identifier.use = #official
* ^identifier.system = $URI
* ^identifier.value = $MercuriusSpecialtyValueSetOID
* ^name = "MercuriusSpecialty"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* include codes from system MercuriusSpecialty_CS