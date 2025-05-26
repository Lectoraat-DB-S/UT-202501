# README

## Beschrijving
Dit project bevat de code om een meetopstelling automatisch te laten bewegen en de meetgegevens op te slaan in een database. de meetopstelling bevat een sensorblok die naar een gekozen hoeveelheid graden wordt uitgeweken op basis van de HMI en weer terug naar nul punt gaat wanneer een meting wordt uitgevoerd en opgeslagen in een database.

### Hardware
Voor deze realisatie is gebruik gemaakt van een  Beckhoff CX5130 PLC die de data ontvangt van de EK1100 module en dit doorstuurt naar de laptop.
De EK1100 module is gekoppeld op de volgende manier aan de andere modules:
A diagram of a device

AI-generated content may be incorrect., Picture


### Software
Twincat is gebruikt om de software te schrijven voor de **PLC**. het programma is geprogrammeerd in **Structured Text**. 
Als Twincat in Run mode(![image](https://github.com/user-attachments/assets/295a928c-e540-48e3-ae08-55f0b2185e94)) wordt gezet is het programma op de plc gezet. 
om metingen uit te voeren wordt in de **Solution** het **HMI_Actuator** project geopent en hierin de actuator_view om dit in live view te zetten. hierin kan je nu instellingen invoeren en metingen uitvoeren.


## Imports en versies
Voor dit project zijn een heel aantal extra softwareonderdelen geïnstalleerd. 
Dit is getest op:  
Twincat 3 XAE Shell 64-bit Build 4026.14 
TF6240 Database server
SQl Server Management studio 20

### Imports
De volgende libraries zijn toegevoegd aan de twincat solution:

![image](https://github.com/user-attachments/assets/48139cae-06ba-42c3-ae01-b5a68a94a0e7)


De volgende libraries zijn toegevoegd aan de HMI:

![image](https://github.com/user-attachments/assets/259ac83a-64d5-4052-99c3-b4707e22707b)


### Drivers
voor de EtherCAT communcicatie is in twincat de realtime etherCAT driver geinstalleerd. dit kan op de volgende manier.
in de Twincat 3 Shell
![image](https://github.com/user-attachments/assets/fb88b882-ae06-4654-b26e-18970ee53bff)

en selecteer de correcte poort waarop de plc is verbonden en installeer de driver.

## Architectuur
Main:
de bovengenoemde libraries 
    
HMI:  
de bovengenoemde libraries

## References
Voor verbinding naar de database is gebruik gemaakt van de volgende tutorial: https://twincontrols.com/community/twincat-knowledgebase/read-write-ms-sql-database-in-twincat-3/
de communicatie tussen de plc en de database verloopt via de tc3_database library en de TF6240 database server van beckhoff.
De buffer voor data logging is gebaseerd op: https://infosys.beckhoff.com/english.php?content=../content/1033/tf6420_tc3_database_server/6263315851.html&id=
voor verbinding maken tussen een scope en de HMI is de er gebruik gemaakt van de volgende tutorial: https://www.hemelix.com/scada-hmi/twincat-hmi/twincat-hmi-scope/

## Usage
voordat je het programma kan runnnen moet de volgende software worden geïnstalleerd:
Twincat package manager om de twincat XAE shell, database server en hmi modules te installeren
https://www.beckhoff.com/en-en/products/automation/twincat/twincat-3-build-4026/
SQL Server management studio om de database te hosten op je lokale pc. hiervoor is versie 20.2.1 gebruikt.
https://learn.microsoft.com/nl-nl/ssms/release-history#release-dates-and-build-numbers


1. Clone de repository en naar je gekozen locatie
2. zet in de SQL Server management studio de database door de volgende stappen te doen
 2.1 Login in op en gebruikt SQL server authentication als authentication method
 2.2 Rechte muis klik op databases
 2.3 Klik op New Database:
   ![image](https://github.com/user-attachments/assets/a6dd6c1c-d2ae-4dc5-9eef-8d8e62505f75)
 2.4 Maak een database aan met een zelfgekozen naam:
   ![image](https://github.com/user-attachments/assets/d01f722b-abb2-45e1-9561-4cc78c5b9c0d)
 2.5 Klik op OK
 2.6 de Database zou nu moeten verschijnen:
   ![image](https://github.com/user-attachments/assets/18bd853a-ee42-4f2a-83fd-6848b00ea61f)    
 2.7 Klik op restore database :
   ![image](https://github.com/user-attachments/assets/a6dd6c1c-d2ae-4dc5-9eef-8d8e62505f75)
 2.8 klik bij source op device en *add* de .bak file:
   ![image](https://github.com/user-attachments/assets/c3534333-7bb2-4742-9a90-8688082d1a79)
 2.9 de restore moet eruit zien als hierboven klik daarna op OK.
 2.10 de database is nu overgenomen             
3. Open de TF6240 Database server
 3.1  klik op new DB connection:
   ![image](https://github.com/user-attachments/assets/0e093b66-f8a4-45c8-8217-f0af25ead18f)
 3.2 vul de correcte gegevens in, bij server je eigen server naam van de SQL server management studio en bij database de naam van jouw database. om in te loggen is *user*  de naam en wachtwoord:
   ![image](https://github.com/user-attachments/assets/07b52374-6e03-4c5e-b2fa-8017e3db2bae)
    hier kan je de gegevens vinden om in te vullen:
   ![image](https://github.com/user-attachments/assets/db25447a-95b2-4b51-b61d-8b624bae956e)		
 3.3 klik op check:
   ![image](https://github.com/user-attachments/assets/7641ad87-4858-487b-a8b1-32be7a39e245)
 3.4 klik op SQL Query editor knop:
   ![image](https://github.com/user-attachments/assets/faf67c30-3ef4-487f-a9b8-798870a20446)
 3.5 refresh de database:
   ![image](https://github.com/user-attachments/assets/f89fda4f-c1f6-42d1-8ee3-37d9968bff1c)
 3.6 als de database verschijnt is er correct verbonden met de plc en database
4. Doe twincat in *run mode* of *config mode* dit kan door de volgende commands in de command window in twincat te typen:
Enter the command doas TcSysExe.exe --config in the console to put TwinCAT into Config mode.
Enter the command doas TcSysExe.exe --run in the console to put TwinCAT into Run mode.
of door in van deze twee knoppen te klikken(Groen is *Run Mode*, Blauw is *config mode* ):
  ![image](https://github.com/user-attachments/assets/f97ed723-4457-4e52-b5dd-7c58a7bc715a)
5. Zet twincat in *Run mode*  
6. Ga naar de **HMI_Actuator** project in de solution en open de *Actuator_view*
   ![image](https://github.com/user-attachments/assets/9d63bd20-e1e6-46aa-9994-84a504c2f393) 
7. Open de live view:
   ![image](https://github.com/user-attachments/assets/3444464c-4dcf-46b2-afa2-60208baed08a)
8. Selecteer de gekozen browser om de hmi hierin te openen:
   ![image](https://github.com/user-attachments/assets/e6d5b4a8-3374-4fcd-8c47-e6e786f5faa1)	 
9. in de live view kan je instellingen invoeren en metingen uitvoeren die naar de database worden geschreven.

   
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
