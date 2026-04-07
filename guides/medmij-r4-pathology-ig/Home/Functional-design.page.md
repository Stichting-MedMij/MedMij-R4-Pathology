---
topic: FO
---

# Functioneel ontwerp

## Algemeen
Dit functioneel ontwerp beschrijft hoe pathologieverslagen beschikbaar worden gesteld aan de persoon via een Persoonlijke Gezondheidsomgeving (PGO). Hierdoor kan de persoon zijn pathologieverslagen inzien om een beter en vollediger beeld te krijgen van de eigen medische situatie. In dit ontwerp gebruiken we de term 'patiënt' om de persoon aan te duiden, maar hier kan ook 'burger' gelezen worden.

Dit functioneel ontwerp sluit aan op de pathologie-uitwisseling van [Palga](https://www.palga.nl/).

Merk op dat naast dit ontwerp ook de (functionele) eisen en richtlijnen beschreven in de door Nictiz gepubliceerde [Ontwerpen MedMij](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp) van toepassing zijn.

**Zorgaanbieder en laboratorium** <br/>
Een laboratorium wordt in dit ontwerp als eigen entiteit beschouwd. Een laboratorium kan:
- functioneren als onderdeel van een zorgaanbieder (bijv. ziekenhuislaboratorium), of
- zelfstandig opereren als aparte organisatie (bijv. onafhankelijk pathologielaboratorium).

In beide situaties is het laboratorium (of de zorgaanbieder namens het laboratorium) verantwoordelijk voor het vastleggen en beschikbaar stellen van pathologieverslagen via het bronsysteem. In dit document gebruiken we de term zorgaanbieder als overkoepelende term voor de partij die de pathologieverslagen aan de patiënt beschikbaar stelt. In de PGO is de naam van de zorgaanbieder herkenbaar voor de patiënt, de naam van het laboratorium is dat niet altijd.

### Doelgroep
De doelgroep voor deze pagina wijkt niet af van de [algemene doelgroep](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Doelgroep) van de functionele onderwerpen binnen MedMij.

### Kaders en uitgangspunten
- De uitwisseling vindt plaats binnen het MedMij-afsprakenstelsel (authenticatie, autorisatie, logging, etc.).
- De patiënt raadpleegt gegevens via een PGO dat aan MedMij-eisen voldoet.
- De zorgaanbieder stelt pathologiegegevens beschikbaar via een zorginformatiesysteem (XIS).
- Alleen definitieve/geautoriseerde pathologieverslagen worden uitgewisseld.

### Richtlijn en proces
Dit ontwerp is conform specificaties genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:V2020.01/Ontwerpen#Richtlijn) van de functionele onderwerpen binnn MedMij.

### Reikwijdte
De reikwijdte van dit ontwerp is:
- de functionele beschrijving voor het verzamelen van pathologieverslagen door de patiënt via de PGO;
- de functionele dataset voor de uitwisseling van pathologieverslagen die voortkomen uit pathologieonderzoek;
- de weergaverichtlijnen voor het tonen van pathologieverslagen in de PGO.

Buiten scope:
- Het wijzigen van pathologieverslagen door de patiënt.

### Infrastructuur
Voor het opvragen van pathologieverslagen bij de bronsystemen wordt gebruikgemaakt van de Palga-infrastructuur. Deze infrastructuur ondersteunt de ontsluiting van pathologiegegevens vanuit aangesloten bronsystemen (XIS), via de DVA richting de PGO. De DVA kan de relevante bron(nen) voor de patiënt benaderen via de Palga-keten.

Daarnaast gelden de specificaties genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Infrastructuur) van de functionele ontwerpen binnen MedMij.

### Geografische reikwijdte
Geen nadere specificatie, anders dan genoemd in de [algemene inleiding](https://informatiestandaarden.nictiz.nl/wiki/MedMij:FO:V1/FunctioneelOntwerp#Geografische_reikwijdte) van de functionele onderwerpen binnen MedMij.

### Kwalificatie en testen
Op dit moment wordt de usecase uit dit ontwerp getoetst in een Proof of Concept (PoC). Later volgt meer informatie over kwalificatie.

In de alpha-testfase vindt geïsoleerd testen plaats met behulp van MedMij-simulatoren. Deze simulatoren simuleren de relevante systeemrollen (PGO en XIS) en ondersteunen leveranciers bij het zowel functioneel als technisch valideren van de uitwisseling.

De simulatoren voeren geautomatiseerde validaties uit om te bepalen of een leverancier implementeert conform de geldende specificaties, waaronder de afspraken en profielen zoals beschreven in deze IG (en de van toepassing zijnde MedMij-richtlijnen). De uitkomsten van deze validaties geven inzicht in conformiteit en eventuele afwijkingen, en vormen input voor door te voeren correcties voordat vervolgtesten (bijv. ketentesten) plaatsvinden.

## Usecases

### Algemeen
Een usecase beschrijft een praktijksituatie waarin informatie-uitwisseling plaatsvindt tussen actoren (mensen, systemen) via transacties (welke informatie wordt wanneer uitgewisseld). In dit ontwerp is de usecase 'Verzamelen pathologieverslagen' in scope.

### Usecase: Verzamelen pathologieverslagen

#### Doel en relevantie
Het doel is om patiënten inzicht te geven in de pathologieverslagen die over henzelf zijn vastgelegd, zodat zij regie kunnen nemen op hun eigen gezondheid.

Voor de patiënt:
- Inzicht krijgen in beschikbare pathologieverslagen (bijv. uitslag van een biopt of cytologie).
- Begrijpen waarom materiaal is onderzocht, wat er is gevonden en wat de interpretatie/conclusie is.
- Gegevens thuis kunnen raadplegen, eventueel ter voorbereiding op een consult of als naslag.

Voor de zorgaanbieder:
- Pathologieverslagen betrouwbaar en uniform beschikbaar stellen aan de patiënt via de PGO.
- Borgen dat de patiënt dezelfde 'definitieve' verslaginformatie ziet als in het bronsysteem.

##### Patiëntreis
Sanne (45) heeft een afwijking laten onderzoeken in het ziekenhuis. Er is een biopt afgenomen en naar het pathologielab gestuurd. Een paar dagen later bespreekt de specialist in grote lijnen de uitslag, maar Sanne wil thuis rustig nalezen wat er precies in het verslag staat en welke monsters zijn onderzocht. Ze opent haar PGO, kiest 'Pathologie' en haalt de beschikbare verslagen op. In het overzicht ziet ze het pathologieverslag met datum, type onderzoek en status (*definitief*). Ze kan doorklikken naar details zoals het monster, relevante bevindingen/observaties en de patholoog die het verslag geautoriseerd heeft.

#### Procesbeschrijving
##### Preproces
- De patiënt beschikt over een PGO dat aan de MedMij-eisen voldoet.
- De patiënt heeft toestemming gegeven voor het elektronisch uitwisselen van pathologiegegevens tussen het betreffende XIS en de eigen PGO.
- Er is sprake van een dossier voor de patiënt bij een zorgaanbieder.
- Er zijn één of meerdere definitieve pathologieverslagen beschikbaar voor de patiënt.

##### Proces
- De patiënt opent in de PGO het onderdeel pathologie en kiest voor het ophalen van zijn pathologieverslagen.
- De PGO doet via een DVA een raadpleging bij Palga om de beschikbare (i.e. definitieve) pathologieverslagen op te halen.
- Palga routeert de aanvraag naar de relevante bronsystemen. Het XIS retourneert de pathologieverslagen inclusief contextgegevens die nodig zijn om het verslag te begrijpen (o.a. aanvraag, monsters, bevindingen en de patholoog die het verslag geautoriseerd heeft).
- De PGO presenteert de uitkomst in een overzicht en detailweergave, met patiëntvriendelijke terminologie en waar nodig toelichting.

##### Postproces
- De pathologieverslagen zijn beschikbaar en begrijpelijk gepresenteerd in de PGO, zowel in een overzicht als door middel van individuele detailweergaven.
- De patiënt kan de gegevens terugvinden, herlezen en gebruiken ter voorbereiding op vervolgzorg.

#### Bedrijfsrollen
Deze usecase onderscheidt twee bedrijfsrollen, namelijk de *Patiënt* en de *Zorgaanbieder*, zoals te zien in onderstaande tabel.

| Bedrijfsrol (actor) | Beschrijving |
| --- | --- |
| Patiënt | Gebruiker van de PGO die pathologieverslagen raadpleegt |
| Zorgaanbieder | Gebruiker van het XIS dat pathologieverslagen beschikbaar stelt |

**Tabel 1: Bedrijfsrollen**

#### Informatieoverdracht
Zowel de patiënt als de zorgaanbieder maken ieder gebruik van een informatiesysteem:

- PGO (patiënt)
- XIS (zorgaanbieder)

##### Systemen en systeemrollen
Deze systemen kennen ieder verschillende systeemrollen, die het uitwisselen van gegevens tussen deze systemen mogelijk maken. Hier gaat het om de uitwisseling van pathologieverslagen die zijn geregistreerd bij de zorgaanbieder naar de patiënt.

| Systeem | Naam systeemrol | Systeemrolcode | Omschrijving |
| --- | --- | --- | --- |
| PGO | PathologieRapportenRaadplegend | PA-PRR-1.0.0-alpha.1-FHIR | Raadplegen pathologieverslagen bij de zorgaanbieder |
| XIS | PathologieRapportenBeschikbaarstellend | PA-PRB-1.0.0-alpha.1-FHIR | Beschikbaar stellen pathologieverslagen aan de patiënt |

**Tabel 2: Systeemrollen**

#### Transacties en transactiegroepen
Het uitwisselen van gegevens tussen de verschillende systeemrollen gebeurt op basis van transacties. Een verzameling van transacties (bijvoorbeeld een vraag- en antwoordbericht) vormt een zogeheten transactiegroep. Voor de technische specificaties, zie het {{pagelink: TD, text: technisch ontwerp}}.

| Transactiegroep | Transactie | Systeemrolcode | Systeem | Bedrijfsrol |
| --- | --- | --- | --- | --- |
| Verzamelen Pathologieverslagen (PULL) | Raadplegen pathologieverslagen | PA-PRR-1.0.0-alpha.1-FHIR | PGO | Patiënt |
| Verzamelen Pathologieverslagen (PULL) | Beschikbaar stellen pathologieverslagen | PA-PRB-1.0.0-alpha.1-FHIR | XIS | Zorgaanbieder |

**Tabel 3: Transactiegroepen**

#### Dataset
De dataset is uitgewerkt aan de hand van {{pagelink: LogicalModelsIndex, text: Logical Models}}.

Een pathologieverslag wordt functioneel gezien aangeboden als een samenhangend geheel dat bestaat uit:
- Verslag: het pathologieverslag (metadata en interpretatie/conclusies).
- Aanvraagcontext: de onderliggende aanvraag (waarom is het onderzoek gedaan).
- Bevindingen: relevante observaties/onderdelen van het verslag (bijv. macroscopie/microscopie/protocoldata).
- Monsters: welke materialen/monsters zijn onderzocht.
- Patholoog: de patholoog het verslag heeft geautoriseerd.

#### Weergaverichtlijn

##### Scope weergaverichtlijn
De richtlijn geeft handvatten voor:
- het gebruik van patiëntvriendelijke termen en toelichting;
- de inhoud van het overzicht van pathologieverslagen in de PGO.

De richtlijn geeft géén handvatten voor de vormgeving (kleur, vorm, lettertype, etc.) van pathologieverslagen.

##### Inhoud weergaverichtlijn
De weergaverichtlijn voor pathologieverslagen is [hier](https://medmij.atlassian.net/wiki/spaces/IER/pages/828702721/Weergaverichtlijn+Pathologieverslagen) te vinden.