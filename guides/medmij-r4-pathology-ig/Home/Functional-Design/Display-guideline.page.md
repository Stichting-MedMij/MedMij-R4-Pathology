---
topic: Weergaverichtlijn
---

# Weergaverichtlijn

## Inleiding
Dit is de weergaverichtlijn voor de gegevensdienst Pathologie.

De richtlijn bevat mock-ups die bedoeld zijn ter inspiratie. Persoonlijke gezondheidsomgevingen (PGO's) kunnen deze voorbeelden naar eigen inzicht visueel vormgeven, zolang de gebruiksvriendelijkheid behouden blijft.

## Doel
Deze richtlijn heeft als doel om duidelijke handvatten te bieden voor een patiëntvriendelijke en begrijpelijke weergave van pathologieverslagen in de PGO. De richtlijn ondersteunt ontwikkelaars en zorgverleners bij het:
- gebruiken van begrijpelijke en patiëntvriendelijke termen en toelichtingen;
- structureren en presenteren van een overzicht van gegevens op een manier die aansluit bij de informatiebehoefte van PGO-gebruikers.

De richtlijn geeft géén handvatten voor de vormgeving (kleur, vorm, lettertype, etc.) van gegevens.

## Scope
De scope van deze richtlijn bestaat uit weergave van pathologieverslagen in de PGO. Gegevens die via andere MedMij-gegevensdiensten verzameld worden in de PGO zijn hierin niet meegenomen.

## Inhoud richtlijn
Het inloggen en authenticeren bij de zorgaanbieder is niet opgenomen in deze richtlijn.

De gebruiker gaat in de PGO naar het verslagenoverzicht waar de opgehaalde pathologieverslagen getoond worden.

De weergaverichtlijn bestaat uit 3 schermen:
- Overzicht van alle pathologieverslagen van alle zorgaanbieders in één overzicht
- Detailgegevens per onderzoek (algemeen)
- Detailgegevens per onderzoek (protocol)

De verslagen die in de weergaverichtlijn beschreven staan, sluiten aan op de pathologie-uitwisseling van Palga. Het overzicht hieronder geeft weer hoe een UX-design getoond kan worden. 

De richtlijn gaat ervan uit dat de PGO een responsief ontwerp ondersteunt. Dat betekent dat de weergave zich automatisch aanpast aan het schermformaat van de gebruiker. Ongeacht op welk apparaat een gebruiker zijn PGO opent (bijvoorbeeld een smartphone, tablet of groot desktopscherm), blijven de lay‑out, afbeeldingen, knoppen en tekst goed leesbaar en bruikbaar.

De acceptatiecriteria voor het weergeven van pathologieverslagen zijn hieronder opgenomen.

| Nr | Acceptatiecriteria |
| --- | --- |
| 1 | Standaard worden alle beschikbaar gestelde verslagen van de zorgaanbieder(s) weergegeven, gesorteerd op autorisatiedatum van nieuw naar oud. |
| 2 | Voor het dataveld datum van autorisatie (DatumAutorisatie, mercurius-core-rubriek-44) kan een specifieke periode geselecteerd worden. |
| 3 | Alle datavelden in het overzichtsscherm zijn sorteerbaar. |
| 4 | De datavelden in het overzichtsscherm zijn begrijpelijk en gebruiksvriendelijk geformuleerd. Zie de {{pagelink: Weergaverichtlijn, text: Tabel met specificaties, anchor: TabelSpecificaties}} voor de aanbevolen termen per opgehaald dataveld. |
| 5 | Look en feel moeten aansluiten op weergave van bestaande gegevensdiensten. |

**Tabel 1: Acceptatiecriteria**

### Overzicht van alle pathologieverslagen
Hieronder is een voorbeeld weergegeven van het overzichtsscherm van alle pathologieverslagen die zijn opgehaald bij de zorgaanbieders.

**Onderzoeken die voor u zijn aangevraagd**
| Zorgorganisatie | Verslagnummer | Datum van autorisatie |
| --- | --- | --- |
| LUMC | T26-60066 | 03-02-2026 |
| LUMC | C25-12345 | 01-01-2025 |
| Erasmus MC | T24-374299 | 05-03-2024 |

**Tabel 2: Voorbeeld overzichtsscherm**

### Detailgegevens per onderzoek (algemeen)
Dit detailscherm wordt getoond als een specifiek onderzoek in het overzichtsscherm wordt geselecteerd. 

| Aanvraag | |
| --- | --- |
| Soort aanvraag | normaal |
| Soort bevolkingsonderzoek | Geen bevolkingsonderzoek |
| Aanvrager | P. Plijster |
| Specialisme | gastro-enterologie |
| Zorgorganisatie | LUMC |
| Locatie | Polikliniek MDL |
| Onderzoeksvraag | Afwijkingen aanwezig? |

| Monster | |
| --- | --- |
| Aard van materiaal | Colon Biopt |
| Datum van afname | 01-02-2026 |
| Datum van ontvangst | 03-02-2026 |
| Verkrijgingswijze | biopsie |
| Aantal monsters | 2 |

| Verslag | |
| --- | --- |
| Verslagnummer | T26-60066 |
| Autorisator | Jan Oosting |
| Datum van autorisatie | 03-02-2026 |
| Medische gegevens | Adenocarcinoom <br/> Hemicolectomie |
| Macroscopie | Colon resectie met lengte van 20 cm |
| Microscopie | Gebaseerd op de richtlijn Colorectaalcarcinoom versie 10-2019, Neuro-endocriene tumoren versie 1.0 (2013) en ENETS consensus richtlijn NEN versie 2017 <br/> <br/> Klinische Gegevens en Macroscopie <br/> Type resectie: hemicolectomie links <br/> Niveau van resectie mesocolon: in het mesocolische vet <br/> Perforatie: niet aanwezig <br/> Klinisch obstructie / ileus: nee <br/> Lokalisatie tumor: colon descendens <br/> Aspect tumor: schotelvormig <br/> Maximale diameter tumor: 3,0 cm <br/> Lengte preparaat: 20 cm <br/> Ingevroren materiaal aanwezig: nee <br/> Tumor aanwezig: ja, 1 tumor <br/> Patient is bekend met: morbus Crohn <br/> Metastase(n): niet gevonden <br/> Eerdere (neo-adjuvante) therapie: geen <br/> Vriescoupe tumor: niet verricht <br/> <br/> Microscopie <br/> Type tumor (WHO): adenocarcinoom <br/> Differentiatiegraad: goed/matig gedifferentieerd (laaggradig) <br/> Diepste tumordoorgroei: submucosa <br/> Angio-invasie: lymfvat invasie <br/> Angio-invasie opmerking: geen intramurale veneuze invasie en geen extramurale veneuze invasie aangetroffen <br/> Tumor budding: laag (Bd1) <br/> Perineurale groei: niet aangetroffen <br/> Lymfocytaire infiltratie: ja <br/> <br/> Snijvlakken <br/> Dichtstbijzijnde darmsnijvlak: distaal vrij op &gt;= 1 cm <br/> Retroperitoneaal klievingsvlak/radiaire snijvlak: vrij op 0,8 cm <br/> <br/> Lymfklieren <br/> Aantal lymfklieren: 15 <br/> Aantal lymfklieren met metastasen: 0 <br/> Aantal tumordeposits: 0 <br/> <br/> Overige <br/> Poliep(en): niet aanwezig <br/> <br/> Moleculaire bepaling <br/> Mutatie analyse: niet uitgevoerd |
| Conclusie | Hemicolectomie links: type tumor (WHO): goed/matig gedifferentieerd (laaggradig) adenocarcinoom; maximale diameter tumor 3,0 cm; lokalisatie: colon descendens; diepste tumor doorgroei: submucosa. <br/> Dichtstbijzijnde darmsnijvlak vrij (afstand &gt;= 1 cm); retroperitoneaal klievingsvlak/radiaire snijvlak vrij (afstand 0,8 cm). <br/> Angio-invasie: lymfvat invasie. <br/> Perineurale invasie: niet aangetroffen. <br/> Aantal lymfklieren: 15 waarvan met metastasen: 0. <br/> <br/> TNM classificatie Colon en Rectum (9e editie UICC): pT1N0. <br/> Patiënt is bekend met: morbus Crohn. |

**Tabel 3/4/5: Voorbeeld detailscherm (algemeen)**

### Detailgegevens per onderzoek (protocol)
Dit detailscherm wordt (aanvullend) getoond naast/onder het detailscherm met algemene gegevens per onderzoek, wanneer het onderzoek is gebaseerd op een bepaald protocol.

Het is van belang dat voor elke term die correspondeert met een SNOMED-code op verzoek van de gebruiker een patiëntvriendelijke term getoond kan worden. De PGO is hiervoor gekoppeld met de NTS-server.

**Algemeen**
| Onderdeel | Resultaat |
| --- | --- |
| Eerdere therapie | chemotherapie |
| Respons op eerdere therapie | partiële regressie |

**Monster 1**
| Onderdeel | Resultaat |
| --- | --- |
| Primaire afwijking | tubulair adenoom |
| Type biopt | 1 slijmvliesbiopt |
| Consult | geen |
| Lokalisatie | flexura lienalis |
| Bevinding | met laaggradige dysplasie |

**Monster 2**
| Onderdeel | Resultaat |
| --- | --- |
| Primaire afwijking | tubulair adenoom |
| Type biopt | 1 slijmvliesbiopt |
| Consult | geen |
| Lokalisatie | colon descendens |
| Bevinding | met laaggradige dysplasie |

**Tabel 6/7/8: Voorbeeld detailscherm (protocol)**

## <a name="TabelSpecificaties"></a> Tabel met specificaties
In de tabel met specificaties staan de gegevens uit de gegevensdienst Pathologie, die relevant zijn voor deze weergaverichtlijn, weergegeven.
De prioriteit van de te tonen datavelden wordt vastgesteld volgens de MoSCoW-methodiek. Datavelden die niet in de specificatietabel voorkomen, moeten worden beschouwd als datavelden met de letter W.

<br/>

| Prioriteit | Omschrijving |
| --- | --- |
| M(ust have) | Nodig voor de basisfunctionaliteit van de toepassing en moet worden geïmplementeerd om het proces succesvol te laten verlopen. |
| S(hould have) | Belangrijke functionaliteit die niet vereist is, maar die voordelen biedt voor gebruikers en de algehele gebruikservaring. |
| C(ould have) | Gewenste functionaliteit die waarde toevoegt, maar minder kritisch is en indien nodig kan worden uitgesteld. |
| W(on't have) | Functionaliteiten die nu buiten scope zijn maar mogelijk in de toekomst worden overwogen. |

<br/>

| Naam data-item | Type data-item | Id | Voorbeeld | Waar te tonen in PGO <br/> (a) in overzicht en als detailgegeven <br/> (b) als detailgegeven | Weergavetekst in PGO | Opmerkingen | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Aanvraag** | **Rootconcept** | | | a of b | Aanvraag | | |
| SoortAanvraag | Item | mercurius-core-rubriek-89 | normaal (code 'normaal' in codesysteem 'MercuriusRequestType') | b | Soort aanvraag | | M |
| BVOSoort | Item | mercurius-core-rubriek-97 | Geen BVO (code '0' in codesysteem 'MercuriusHealthScreeningType') | b | Soort bevolkingsonderzoek | | M |
| **Aanvrager** | **Container** | | | a of b | Aanvrager | | |
| AanvragerNaam | Item | mercurius-core-rubriek-68 | P. Plijster | b | Aanvrager | | M |
| Specialisme | Item | mercurius-core-rubriek-71 | huisarts (code 'huisarts' in codesysteem 'MercuriusSpecialty') | b | Specialisme | | M |
| Ziekenhuis | Item | mercurius-core-rubriek-72 | LUMC | a | Ziekenhuis | | M |
| Locatie | Item | mercurius-core-rubriek-67 | Polikliniek MDL | b | Locatie | | M |
| KlinischeVraag | Item | mercurius-core-rubriek-139 | Afwijkingen aanwezig? | b | Onderzoeksvraag | | M |
| **Monster** | **Container** | | | b | Monster | | |
| AardMateriaal | Item | mercurius-core-rubriek-76 | Colon Resectie | b | Aard van materiaal | | M |
| DatumAfname | Item | mercurius-core-rubriek-77 | 01-02-2026 | b | Datum van afname | | M |
| DatumOntvangst | Item | mercurius-core-rubriek-80 | 03-02-2026 | b | Datum van ontvangst | | M |
| Verkrijgingswijze | Item | mercurius-core-rubriek-87 | biopsie | b | Verkrijgingswijze | | M |
| AantalSamples | Item | | 2 | b | Aantal monsters | | M |

| Naam data-item | Type data-item | Id | Voorbeeld | Waar te tonen in PGO <br/> (a) in overzicht en als detailgegeven <br/> (b) als detailgegeven | Weergavetekst in PGO | Opmerkingen | Prioriteit (MoSCoW) |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Verslag** | **Rootconcept** | | | a of b | Verslag | | |
| VerslagIdentificatienummer | Item | mercurius-core-rubriek-3 | T26-60066 | a | Verslagnummer | | M |
| Autorisator | Item | mercurius-core-rubriek-41 | Jan Oosting | b | Patholoog | | M |
| DatumAutorisatie | Item | mercurius-core-rubriek-44 | 03-02-2026 | a | Datum van autorisatie | | M |
| KlinischeGegevens | Item | mercurius-core-rubriek-142 | Adenocarcinoom vastgesteld bij BVO | b | Medische gegevens | | M |
| Macroscopie | Item | mercurius-core-rubriek-184 | Colon resectie met lengte van 20 cm | b | Macroscopie | | M |
| Microscopie | Item | mercurius-core-rubriek-222 | TODO | b | Microscopie | | M |
| Conclusie | Item | mercurius-core-rubriek-224 | TODO | b | Conclusie | | M |
| **Protocoldata** | **Container** | mercurius-core-rubriek-308 | | b | Protocolgegevens | | |