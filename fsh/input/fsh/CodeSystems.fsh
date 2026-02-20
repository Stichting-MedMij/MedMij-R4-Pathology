// All custom CodeSystems used in Pathology

CodeSystem: MercuriusGender_CS
Id: MercuriusGender
Title: "MercuriusGender CodeSystem."
Description: "Codes for the gender of the patient as used in Mercurius."
* insert DefaultNarrative
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

CodeSystem: MercuriusHealthScreeningType_CS
Id: MercuriusHealthScreeningType
Title: "MercuriusHealthScreeningType CodeSystem."
Description: "Codes for the type of national trial for the request as used in Mercurius."
* insert DefaultNarrative
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $MercuriusHealthScreeningTypeCodeSystemOID
* ^name = "MercuriusHealthScreeningType"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 4
* #0 "Geen BVO" "Geen Bevolkingsonderzoek"
* #2 "BVO BK" "Bevolkingsonderzoek Borstkanker"
* #3 "BVO DDK" "Bevolkingsonderzoek (Dikke)darmkanker"
* #4 "BVO BMHK" "Bevolkingsonderzoek Baarmoederhalskanker"

CodeSystem: MercuriusRequestType_CS
Id: MercuriusRequestType
Title: "MercuriusRequestType CodeSystem."
Description: "Codes for the type of the request as used in Mercurius."
* insert DefaultNarrative
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $MercuriusRequestTypeCodeSystemOID
* ^name = "MercuriusRequestType"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 10
* #normaal "normaal"
* #spoed "spoed"
* #advies "advies"
* #panel "panel"
* #"consult tbv derden" "consult tbv derden"
* #"revisie tbv derden" "revisie tbv derden"
* #"moleculair onderzoek" "moleculair onderzoek"
* #project "project"
* #oud "oud"
* #"onderzoek tbv derden" "onderzoek tbv derden"

CodeSystem: MercuriusSpecialty_CS
Id: MercuriusSpecialty
Title: "MercuriusSpecialty CodeSystem."
Description: "Codes for the specialty of the requester as used in Mercurius."
* insert DefaultNarrative
// * ^identifier.use = #official
// * ^identifier.system = $URI
// * ^identifier.value = $MercuriusSpecialtyCodeSystemOID
* ^name = "MercuriusSpecialty"
* ^status = #draft
* ^experimental = false
* insert PublisherAndContact
* ^caseSensitive = false
* ^content = #complete
* ^count = 34
* #allergologie "allergologie"
* #anesthesiologie "anesthesiologie"
* #cardiologie "cardiologie"
* #"cardiopulmonale chirurgie" "cardiopulmonale chirurgie"
* #dermatologie "dermatologie"
* #gastro-enterologie "gastro-enterologie"
* #heelkunde "heelkunde"
* #huisarts "huisarts"
* #"inwendige geneeskunde" "inwendige geneeskunde"
* #"keel, neus, oorheelkunde" "keel, neus, oorheelkunde"
* #kindergeneeskunde "kindergeneeskunde"
* #"klinische chemie" "klinische chemie"
* #"klinische genetica" "klinische genetica"
* #"klinische geriatrie" "klinische geriatrie"
* #longziekten "longziekten"
* #"medische microbiologie" "medische microbiologie"
* #"mondziekte, kaakchirurgie" "mondziekte, kaakchirurgie"
* #neurochirurgie "neurochirurgie"
* #neurologie "neurologie"
* #"nucleaire geneeskunde" "nucleaire geneeskunde"
* #oogheelkunde "oogheelkunde"
* #orthodontie "orthodontie"
* #orthopedie "orthopedie"
* #"overige specialismen" "overige specialismen"
* #"pathologische anatomie" "pathologische anatomie"
* #"plastische chirurgie" "plastische chirurgie"
* #psychiatrie "psychiatrie"
* #radiodiagnostiek "radiodiagnostiek"
* #radiotherapie "radiotherapie"
* #reumatologie "reumatologie"
* #revalidatie "revalidatie"
* #"specialisme onbekend" "specialisme onbekend"
* #urologie "urologie"
* #"verloskunde, gynaecologie" "verloskunde, gynaecologie"