---
topic: FO
---

# Functioneel ontwerp

## Algemeen 
Dit functioneel ontwerp beschrijft hoe pathologiegegevens beschikbaar worden gesteld aan de persoon via een Persoonlijke Gezondheidsomgeving (PGO). Hierdoor kan de persoon zijn/haar pathologieverslagen inzien om een beter en vollediger beeld te krijgen van de eigen medische situatie. In dit document gebruiken we de term patiënt om de persoon aan te duiden.

Dit functioneel ontwerp sluit aan op de pathologie-uitwisseling van Palga (LINK??).

Een laboratorium wordt in dit ontwerp als eigen entiteit beschouwd. Een laboratorium kan:
- functioneren als onderdeel van een zorgaanbieder (bijv. ziekenhuislaboratorium), of
- zelfstandig opereren als aparte organisatie (bijv. onafhankelijk pathologielaboratorium).

In beide situaties is het laboratorium (of de zorgaanbieder namens het laboratorium) verantwoordelijk voor het vastleggen en beschikbaar stellen van pathologieverslagen via het bronsysteem (XIS). In dit document gebruiken we de term zorgaanbieder voor de combinatie zorgaanbieder en laboratorium. De naam van de zorgaanbieder is herkenbaar voor een patiënt. De naam van het laboratorium niet. 


### Doelgroep
De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Doelgroep) van de functionele onderwerpen binnen MedMij. 


### Kaders en uitgangspunten
- De uitwisseling vindt plaats binnen het MedMij-afsprakenstelsel (authenticatie, autorisatie, logging, etc.).
- De patiënt raadpleegt gegevens via een PGO dat aan MedMij-eisen voldoet.
- De zorgaanbieder stelt pathologiegegevens beschikbaar via een zorginformatiesysteem (XIS).
- Alleen definitieve/geverifieerde pathologieverslagen worden uitgewisseld (functioneel: “definitief”; technisch: status final).

### Richtlijn en proces 
Dit ontwerp is conform specificaties genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Richtlijn) van de functionele onderwerpen binnn MedMij.

### Reikwijdte
De reikwijdte van dit ontwerp is:
- de functionele beschrijving voor het verzamelen van pathologieverslagen door de patiënt via de PGO;
- de functionele dataset voor de uitwisseling van pathologiegegevens die voortkomen uit pathologieonderzoek;
- De weergaverichtlijnen voor het tonen van pathologiegegevens in de PGO.

Buiten scope:
- Het wijzigen van pathologieverslagen door de patiënt.

### Infrastructuur
Geen nadere specificatie, anders dan genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Infrastructuur) van de functionele onderwerpen binnn MedMij.

### Geografische reikwijdte
Volgt de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.02/Ontwerpen#Geografische_reikwijdte) van de functionele onderwerpen binnen MedMij.

Voor het opvragen van pathologieverslagen bij de bronsystemen wordt gebruikgemaakt van de Palga-infrastructuur. Deze infrastructuur ondersteunt de ontsluiting van pathologiegegevens vanuit aangesloten bronsystemen (XIS), via de DVA richting de PGO, waarbij de DVA in staat is de juiste bron(nen) voor de patiënt te benaderen via de hiervoor ingerichte Palga-keten (LINK???).

### Kwalificatie en testen
Op dit moment wordt de usecase uit dit ontwerp getoetst in een Proof of Concept (PoC). Later volgt meer informatie over kwalificatie.

In de alpha-testfase vindt geïsoleerd testen plaats met behulp van MedMij-simulatoren. Deze simulatoren simuleren de relevante systeemrollen (PGO en DVA) en ondersteunen leveranciers bij het valideren van de technische en functionele uitwisseling.

De simulatoren voeren geautomatiseerde validaties uit om te bepalen of een leverancier implementeert conform de geldende specificaties, waaronder de afspraken en profielen zoals beschreven in deze Implementation Guide (en de van toepassing zijnde MedMij-richtlijnen). De uitkomsten van deze validaties geven inzicht in conformiteit en eventuele afwijkingen, als input voor correcties vóór vervolgtesten (bijv. ketentesten).

## Usecases

### Algemeen
Een usecase is een specifieke beschrijving van een praktijksituatie waarbij voor een concrete situatie het uitwisselen van informatie wordt beschreven aan de hand van actoren (mensen, systemen) en transacties (welke informatie wordt wanneer uitgewisseld). Een usecase is een verbijzondering van een specifiek onderdeel van het zorgproces. In dit ontwerp is de volgende use case in scope:
- Verzamelen pathologieverslagen (PULL)

### Doel en relevantie
Het doel is om het voor patiënten mogelijk te maken om regie te nemen op hun eigen gezondheid door inzicht te geven over de pathologiegegevens die over henzelf gaan.

Voor de patiënt:
- Inzicht krijgen in beschikbare pathologieverslagen (bijv. uitslag van een biopt of cytologie).
- Begrijpen waarom materiaal is onderzocht, wat er is gevonden en wat de interpretatie/conclusie is.
- Gegevens thuis kunnen raadplegen, op eigen moment, eventueel ter voorbereiding op een consult of als naslag.

Voor de zorgaanbieder:
- Pathologieverslagen betrouwbaar en uniform beschikbaar stellen aan de patiënt via een PGO.
- Ondersteunen dat de patiënt dezelfde “definitieve” verslaginformatie ziet als in het bronsysteem.

#### Patiëntreis
Sanne (45) heeft een afwijking laten onderzoeken in het ziekenhuis. Er is een biopt afgenomen en naar het pathologielab gestuurd. Een paar dagen later bespreekt de specialist in grote lijnen de uitslag, maar Sanne wil thuis rustig nalezen wat er precies in het verslag staat en welke monsters zijn onderzocht. Ze opent haar PGO, kiest “Pathologie” en haalt de beschikbare verslagen op. In het overzicht ziet ze het pathologieverslag met datum, type onderzoek en status (definitief). Ze kan doorklikken naar details zoals het specimen (monster), relevante bevindingen/observaties, en de geautoriseerde patholoog.

#### Preproces
- De patiënt beschikt over een eigen PGO dat aan de MedMij-eisen voldoet.  
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van pathologiegegevens tussen het betreffende XIS en de eigen PGO. 
- Er is sprake van een dossier voor de patiënt bij een zorgaanbieder.   
- Er zijn één of meerdere definitieve pathologieverslagen beschikbaar voor de patiënt.

#### Proces
- De patiënt opent in de PGO het onderdeel Pathologie en kiest “verslagen ophalen”.
- De PGO doet via een DVA een zoekopdracht bij Palga om beschikbare pathologieverslagen op te halen (functioneel: “haal alle definitieve pathologieverslagen op”).
- Het XIS retourneert een set pathologieverslagen en de bijbehorende contextgegevens die nodig zijn om het verslag te begrijpen (zoals aanvraag, specimen/monsters, bevindingen en de autoriserende patholoog).
- De PGO presenteert de uitkomst in een overzicht en detailweergave, met patiëntvriendelijke terminologie en waar nodig toelichting.

#### Postproces
- De pathologieverslagen zijn beschikbaar en begrijpelijk gepresenteerd in de PGO (overzicht + details).
- De patiënt kan de gegevens terugvinden, herlezen en gebruiken ter voorbereiding op vervolgzorg.

### Bedrijfsrollen
Deze usecase onderscheidt twee bedrijfsrollen, namelijk de *Patiënt* en de *Zorgaanbieder*, zoals te zien in onderstaande tabel.

Tabel 1 Bedrijfsrollen

| Bedrijfsrol (actor) | Beschrijving |
| --- | --- |
| Patiënt | Gebruiker van de PGO die pathologieverslagen raadpleegt |
| Zorgaanbieder | Gebruiker van het XIS dat pathologieverslagen beschikbaar stelt |

**Tabel 1: Bedrijfsrollen**

### Informatieoverdracht
Zowel de patiënt als de zorgaanbieder maken ieder gebruik van een informatiesysteem:

- PGO (patiënt)
- XIS (zorgaanbieder)

#### Systemen en systeemrollen
De uitwisseling betreft het beschikbaar stellen en raadplegen van pathologieverslagen die bij de zorgaanbieder zijn geregistreerd.

Tabel 2 Systeemrol

| Systeem | Naam systeemrol | Systeemrolcode | Omschrijving |
| --- | --- | --- | --- |
| PGO | PathologieRapportenRaadplegend | MM-1.0-PRR-FHIR (PHR)| Raadplegen pathologieverslagen bij de zorgaanbieder |
| XIS | PathologieRapportenBeschikbaarstellend | MM-1.0-PRB-FHIR (XIS)| Beschikbaar stellen pathologieverslagen aan de Patiënt |
 
### Transacties en transactiegroepen
Het uitwisselen van gegevens tussen de verschillende systeemrollen gebeurt op basis van transacties. Een verzameling van transacties (bijvoorbeeld een vraag- en antwoordbericht) vormt een zogeheten transactiegroep. Voor de technische specificaties, zie het {{pagelink: TD, text: technisch ontwerp}}.

Tabel 3 Transactiegroep

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |
| Verzamelen Pathologiegegevens (PULL) | Raadplegen pathologieverslagen | MM-1.0-PRR-FHIR (PHR) | PGO | Patiënt |
| Verzamelen Pathologiegegevens (PULL) | Beschikbaar stellen pathologiegegevens| MM-1.0-PRB-FHIR (XIS) | XIS | Zorgaanbieder |

### Dataset 
De dataset wordt beschreven in de bijbehorende Logical Models:
- LogicalModel [Request](https://simplifier.net/medmij-r4-pathology/lmrequest)
- LogicalModel [Patient](https://simplifier.net/medmij-r4-pathology/lmpatient)
- LogicalModel [Report](https://simplifier.net/medmij-r4-pathology/lmreport)

### Functionele uitgangspunten voor de dataset
Een pathologieverslag wordt functioneel gezien aangeboden als een samenhangend geheel met:
	•	Verslag: het pathologie-rapport (metadata + conclusies/interpretatie).
	•	Aanvraagcontext: de onderliggende aanvraag (waarom is het onderzoek gedaan).
	•	Bevindingen: relevante observaties/onderdelen van het verslag (bijv. macroscopie/microscopie/protocoldata).
	•	Specimen/monster: welke materialen/monsters zijn onderzocht.
	•	Autoriserende professional: wie het verslag heeft geautoriseerd.

### Weergaverichtlijn

#### Scope weergaverichtlijn 
De richtlijn geeft handvatten voor:
- het gebruik van patiëntvriendelijke termen en toelichting;
- de inhoud van het overzicht van pathologieverslagen in de PGO.

De richtlijn geeft géén handvatten voor de vormgeving (kleur, vorm, lettertype, etc.) van pathologieverslagen. 

### Inhoud weergaverichtlijn
De weergaverichtlijn voor pathologieverslagen is [hier]() te vinden.