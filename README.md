# README

## Beschrijving
Dit project bevat de code om een meetopstelling automatisch te laten bewegen en de meetgegevens op te slaan in een database. de meetopstelling bevat een sensorblok die naar een gekozen hoeveelheid graden wordt uitgeweken op basis van de HMI en weer terug naar nul punt gaat wanneer een meting wordt uitgevoerd en opgeslagen in een database.

### Hardware
Voor deze realisatie is gebruik gemaakt van een  Beckhoff CX5130 PLC die de data ontvangt van de EK1100 module en dit doorstuurt naar de laptop.
De EK1100 module is gekoppeld op de volgende manier aan de andere modules:
![image](https://github.com/user-attachments/assets/3133acd1-c0ad-4caa-8477-0c6f518a9a2d)




### Software
Twincat is gebruikt om de software te schrijven voor de **PLC**. het programma is geprogrammeerd in **Structured Text**.<br>
Als Twincat in Run mode(![image](https://github.com/user-attachments/assets/9d0f8dd2-c0be-4e2c-9367-fac5449f06c1) ) wordt gezet is het programma op de plc gezet. 
om metingen uit te voeren wordt in de **Solution** het **HMI_Actuator** project geopent en hierin de actuator_view om dit in live view te zetten. hierin kan je nu instellingen invoeren en metingen uitvoeren.


## Imports en versies
Voor dit project zijn een heel aantal extra softwareonderdelen geïnstalleerd. 
Dit is getest op:  
Twincat 3 XAE Shell 64-bit Build 4026.14 <br>
TF6240 Database server <br>
SQl Server Management studio 20 <br>

### Imports
De volgende libraries zijn toegevoegd aan de twincat solution: <br>
![image](https://github.com/user-attachments/assets/48139cae-06ba-42c3-ae01-b5a68a94a0e7) <br>


De volgende libraries zijn toegevoegd aan de HMI: <br>
![image](https://github.com/user-attachments/assets/259ac83a-64d5-4052-99c3-b4707e22707b) <br>


### Drivers
voor de EtherCAT communcicatie is in twincat de realtime etherCAT driver geinstalleerd. dit kan op de volgende manier.
in de Twincat 3 Shell en selecteer de correcte poort waarop de plc is verbonden en installeer de driver.
![image](https://github.com/user-attachments/assets/fb88b882-ae06-4654-b26e-18970ee53bff)


## Architectuur
Main: <br> 
de bovengenoemde libraries 
    
HMI:  
de bovengenoemde libraries

## References
Voor verbinding naar de database is gebruik gemaakt van de volgende tutorial: https://twincontrols.com/community/twincat-knowledgebase/read-write-ms-sql-database-in-twincat-3/ <br>
de communicatie tussen de plc en de database verloopt via de *tc3_database* library en de *TF6240 database server* van beckhoff. <br>
De buffer voor data logging is gebaseerd op: https://infosys.beckhoff.com/english.php?content=../content/1033/tf6420_tc3_database_server/6263315851.html&id= <br>
voor verbinding maken tussen een scope en de HMI is de er gebruik gemaakt van de volgende tutorial: https://www.hemelix.com/scada-hmi/twincat-hmi/twincat-hmi-scope/ <br>

## Usage
voordat je het programma kan runnnen moet de volgende software worden geïnstalleerd:
Twincat package manager om de twincat XAE shell, database server en hmi modules te installeren
https://www.beckhoff.com/en-en/products/automation/twincat/twincat-3-build-4026/

SQL Server management studio om de database te hosten op je lokale pc. hiervoor is versie **20.2.1** gebruikt.
https://learn.microsoft.com/nl-nl/ssms/release-history#release-dates-and-build-numbers


1. Maak een map aan waarin je het project wil bewaren. <br>
2. Kopieer de github repository link: <br>
   ![image](https://github.com/user-attachments/assets/772efe5d-19a5-4327-b006-900c34b5b29b) <br>
3. open twincat XAE Shell 64-bit en klik op Git > Clone Repository: <br>
   ![image](https://github.com/user-attachments/assets/2c6351d9-d070-423c-b695-c165d03b9fd3) <br>
4. vul de link samen met de aangemaakte map in en klik op Clone: <br>
   ![image](https://github.com/user-attachments/assets/a8705371-7156-432e-a9ae-633d11540bcb) <br>
5. Klik op file > Open > Project/Solution en Selecteer de Database_Connection folder en open Database_connection.sln: <br>
   ![image](https://github.com/user-attachments/assets/e1341da3-3d98-4b2d-bc5c-680a2a18d76d) <br>
6. solution is nu succesvol geopend. <br>
7. in de solution klik op routes > netId management en kopieer de local netId. <br>
   ![image](https://github.com/user-attachments/assets/4d6f5822-6265-44d8-bacf-49d779b07b5f) <br>
8. in GVL > Global_Variables plaats de netId zodat er op de correcte server verbinding wordt gemaakt. <br>
   ![image](https://github.com/user-attachments/assets/1ba7a6d6-ada9-4643-be90-dd4d3f95c436) <br>
9. twincat is nu succesvol ingesteld  
10. zet in de SQL Server management studio de database door de volgende stappen te doen. <br>
 10.1 Login in op en gebruikt SQL server authentication als authentication method <br>
     ![image](https://github.com/user-attachments/assets/6a93a2ee-8cd9-4001-ac1b-fa8ff2ac343a) <br>
 10.2 Rechte muis klik op databases <br>
 10.3 Klik op New Database:<br>
   ![image](https://github.com/user-attachments/assets/a6dd6c1c-d2ae-4dc5-9eef-8d8e62505f75) <br>
 10.4 Maak een database aan met een zelfgekozen naam: <br>
   ![image](https://github.com/user-attachments/assets/d01f722b-abb2-45e1-9561-4cc78c5b9c0d) <br>
 10.5 Klik op OK <br>
 10.6 de Database zou nu moeten verschijnen: <br>
   ![image](https://github.com/user-attachments/assets/18bd853a-ee42-4f2a-83fd-6848b00ea61f) <br>
 10.7 Klik op restore database: <br>
   ![image](https://github.com/user-attachments/assets/a6dd6c1c-d2ae-4dc5-9eef-8d8e62505f75) <br>
 10.8 klik bij source op device en *add* de .bak file: <br>
   ![image](https://github.com/user-attachments/assets/c3534333-7bb2-4742-9a90-8688082d1a79) <br>
 10.9 de restore moet eruit zien als hierboven klik daarna op OK. <br>
 10.10 de database is nu overgenomen. <br>            
11. Open de TF6240 Database server <br>
 11.1  klik op new DB connection: <br>
   ![image](https://github.com/user-attachments/assets/0e093b66-f8a4-45c8-8217-f0af25ead18f) <br>
 11.2 vul de correcte gegevens in, bij server je eigen server naam van de SQL server management studio en bij database de naam van jouw database. om in te loggen is *user*  de naam en wachtwoord: <br>
   ![image](https://github.com/user-attachments/assets/07b52374-6e03-4c5e-b2fa-8017e3db2bae) <br>
    hier kan je de gegevens vinden om in te vullen: <br>
   ![image](https://github.com/user-attachments/assets/db25447a-95b2-4b51-b61d-8b624bae956e) <br>
 11.3 klik op check: <br>
   ![image](https://github.com/user-attachments/assets/7641ad87-4858-487b-a8b1-32be7a39e245) <br>
 11.4 klik op SQL Query editor knop: <br>
   ![image](https://github.com/user-attachments/assets/faf67c30-3ef4-487f-a9b8-798870a20446) <br>
 11.5 refresh de database: <br>
   ![image](https://github.com/user-attachments/assets/f89fda4f-c1f6-42d1-8ee3-37d9968bff1c) <br>
 11.6 als de database verschijnt is er correct verbonden met de plc en database <br>
12. Doe twincat in *run mode* of *config mode* dit kan door de volgende commands in de command window in twincat te typen: <br>
Enter the command doas TcSysExe.exe --config in the console to put TwinCAT into Config mode. <br>
Enter the command doas TcSysExe.exe --run in the console to put TwinCAT into Run mode. <br>
of door in van deze twee knoppen te klikken(Groen is *Run Mode*, Blauw is *config mode* ): <br>
  ![image](https://github.com/user-attachments/assets/f97ed723-4457-4e52-b5dd-7c58a7bc715a) <br>
13. Zet twincat in *Run mode*  <br>
14. Ga naar de **HMI_Actuator** project in de solution en open de *Actuator_view* <br>
   ![image](https://github.com/user-attachments/assets/9d63bd20-e1e6-46aa-9994-84a504c2f393) <br>
15. Open de live view: <br>
   ![image](https://github.com/user-attachments/assets/3444464c-4dcf-46b2-afa2-60208baed08a) <br>
16. Selecteer de gekozen browser om de hmi hierin te openen: <br>
   ![image](https://github.com/user-attachments/assets/e6d5b4a8-3374-4fcd-8c47-e6e786f5faa1) <br>	 
17. in de live view kan je instellingen invoeren en metingen uitvoeren die naar de database worden geschreven. <br>
voor verdere uitleg van het programma en waar de data zich bevindt volg de gebruiksaanwijzing van het programma.
