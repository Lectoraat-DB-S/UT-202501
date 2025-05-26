# README

## Beschrijving
Dit project bevat de code om een meetopstelling automatisch te laten bewegen en de meetgegevens op te slaan in een database. de meetopstelling bevat een sensorblok die naar een gekozen hoeveelheid graden wordt uitgeweken op basis van de HMI en weer terug naar nul punt gaat wanneer een meting wordt uitgevoerd en opgeslagen in een database.

### Hardware
Voor deze realisatie is gebruik gemaakt van een  Beckhoff CX5130 PLC die de data ontvangt van de EK1100 module en dit doorstuurt naar de laptop.
De EK1100 module is gekoppeld op de volgende manier aan de andere modules:
A diagram of a device

AI-generated content may be incorrect., Picture


### Software
Twincat is gebruikt om de software te schrijven voor de **PLC**. het programma is geprogrammeerd in **Structured Text**. Als Twincat in Run mode(![image](https://github.com/user-attachments/assets/295a928c-e540-48e3-ae08-55f0b2185e94)
) wordt gezet is het programma op de plc gezet. om metingen uit te voeren wordt in de **Solution** het **HMI_Actuator** project geopent en hierin de actuator_view om dit in live view te zetten. hierin kan je nu instellingen invoeren en metingen uitvoeren.


## Imports en versies
Voor dit project zijn een heel aantal extra softwareonderdelen geïnstalleerd. 
Dit is getest op:  
Twincat XAE Shell 64-bit Build 4026.14  












# template-repository 🦾
codering
Tijdens het opleveren van code zien we graag dat er een README bestand wordt meegeleverd, dit maakt het gemakkelijker voor een ander om met jouw code verder te gaan of er gebruik van te maken.
Deze README beschrijft het project, wat je nodig hebt om de code te gebruiken en hoe je de code kunt gebruiken. Uiteraard kan dit ietsje afwijken aan de hand van welke taal je hebt geprogrammeerd, maar blijf het liefst zo dicht bij mogelijk bij deze standaarden.

De volgende dingen zien we graag in een README:
- beschrijving: graag zien we een korte beschrijving van je project. dus een korte uitleg wat je code doet als je het gebruikt.
- imports en versies: graag zien we een lijst met alle imports, packages, software, etc die je hebt gebruikt met de versies. Denk hierbij aan je python versie, dat je iets met "pip install" hebt geinstalleerd of dat je ubuntu 23.04 als operating system hebt gebruikt (dus ook welke versie je hebt geinstalleerd). (test dus ook je code op een andere laptop!!! hierdoor weet je zeker dat je alles genoteerd hebt)
- architectuur: graag zien we een korte beschrijving van de architectuur van je project. welke bestanden hebben welke bestanden nodig en wat kun je in welk bestand vinden.
- reference: graag zien we een lijst met welke code je niet zelf hebt gemaakt of gebaseerd hebt op een ander zijn code met daarbij een link naar de originele code en een datum waarop je die code hebt geraadpleegd. Dit zorgt ervoor dat de juiste mensen credit krijgen. (let op, ook als je een functie ergens vandaan haalt en aanpast hoor je nog steeds te zeggen wie daar credit voor krijgt).
- usage: op het moment dat je extra hardware zoals een robot gebruikt is het fijn als er ook iets uitgelegd wordt over hoe je alles hebt aangesloten en opgestart. Misschien is het wel van belang dat je eerst het programma op de cobot start voordat je de python code op je laptop start.

- commenting: in code is het vrij normaal om comments te gebruiken om je code duidelijker te maken. Graag zien we dan ook dat dit gedaan wordt.
	- functie beschrijving: Liefst zien we dat er per functie met een comment uitgelegd wordt hoe de functie werkt en waarvoor ie bedoeld wordt (dit kan vaak in 1 zin). mocht de functie lang zijn dan zien we ook graag comments tussendoor.
	- Bestand beschrijving: Liefst zien we bovenaan elk bestand dat er een korte beschrijving staat van welke functies er in het bestand geprogrammeerd zijn.
	- Variabele beschrijving:

Een ReadMe schrijf je in Markdown. in de volgende link vind je wat voorbeelden over hoe je deze kunt stylen:
https://github.com/lifeparticle/Markdown-Cheatsheet

mocht je wat inspiratie willen kun je op de github hieronder even kijken.
https://github.com/matiassingers/awesome-readme

https://integrity.mit.edu/handbook/academic-integrity-handbook
