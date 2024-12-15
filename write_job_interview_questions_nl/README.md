# write_job_interview_questions_nl

## Description

**`write_job_interview_questions_nl` richt zich op het probleem van effectieve voorbereiding op sollicitatiegesprekken door relevante interviewvragen in het Nederlands te genereren**

Dit patroon helpt kandidaten zich voor te bereiden op sollicitatiegesprekken door een uitgebreide lijst met potentiële interviewvragen te genereren die zijn toegespitst op specifieke functies en georganiseerd per relevant thema.

## Functionality

Wanneer je `write_job_interview_questions_nl` gebruikt, haalt het de volgende inhoud uit de input:

- Een gestructureerde lijst met interviewvragen in het Nederlands, georganiseerd per thema zoals algemene vragen, technische vragen en competentievragen
- Vragen afgestemd op de toon en stijl van de verstrekte vacaturetekst (indien beschikbaar)
- Vragen gericht op vereiste vaardigheden, competenties en verantwoordelijkheden

### Use cases

De output van `write_job_interview_questions_nl` kan je op meerdere manieren helpen, waaronder:

1. **`Interview Preparation`**<br />
   Oefen met het beantwoorden van algemene en functie-specifieke interviewvragen voor het daadwerkelijke gesprek
2. **`Interview Question Generation`**<br/>
   Genereer relevante interviewvragen op basis van functieomschrijvingen en -eisen

## Usage

Je kunt direct naar de `write_job_interview_questions_nl` **system.md** inhoud verwijzen als volgt:

### **Pull the _system_ prompt directly**

````

curl -sS https://github.com/beecave-homelab/custom-patterns/blob/main/write_job_interview_questions_nl/system.md
````

## Output

Hier is een verkort voorbeeldresultaat van `write_job_interview_questions_nl`.

```markdown
# Voorbeeldvragen voor [Functietitel]

## Algemene vragen
- Vertel eens wat over jezelf
- Waarom solliciteer je op deze functie?
- Wat spreekt je aan in ons bedrijf?

## Technische vragen
- [Functie-specifieke technische vragen]

## Vaardigheidsvragen
- Beschrijf een situatie waarin je...
- Hoe ga je om met...
```

Hiermee kun je snel waardevolle en betekenisvolle inhoud extraheren voor de bovengenoemde gebruiksmogelijkheden.

## Meta

- **Author**: elvee
- **Version Information**: 1.0.0
- **Published**: 15-12-2024
