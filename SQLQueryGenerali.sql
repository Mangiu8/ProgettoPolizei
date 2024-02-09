--1. Conteggio dei verbali trascritti, 
--Select Count(*) as TotaleVerbali from Verbali

--2. Conteggio dei verbali trascritti raggruppati per anagrafe, 
--Select Count(*) as TotaleVerbali2 from Verbali Group by IDAnagrafica

--3. Conteggio dei verbali trascritti raggruppati per tipo di violazione, 
--Select Count(*) as TotaleVerbali2 from Verbali Group by IDViolazione

--4. Totale dei punti decurtati per ogni anagrafe
--Select Nome, Cognome, Sum(DecurtamentoPunti) as TotalePuntiDecurtati from DatiAnagrafici
--INNER JOIN 
--Verbali ON 
--DatiAnagrafici.IDAnagrafica = Verbali.IDAnagrafica
--Group By DatiAnagrafici.IDAnagrafica , Nome, Cognome

--5. Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati 
-- per tutti gli anagrafici residenti a Palermo, 
--Select Cognome, Nome, DataViolazione, IndirizzoViolazione, Importo, DecurtamentoPunti from DatiAnagrafici
--INNER JOIN
--Verbali ON
--DatiAnagrafici.IDAnagrafica = Verbali.IDAnagrafica
--Where Citta = 'Palermo'

--6. Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati
-- per le violazioni fatte tra il febbraio 2019 e luglio 2019, 
-- ho cambiato le date perche non avevo date risalenti all 2009
--Select Cognome, Nome, DataViolazione, Importo, DecurtamentoPunti from DatiAnagrafici
--INNER JOIN
--Verbali ON
--DatiAnagrafici.IDAnagrafica = Verbali.IDAnagrafica
--Where DataViolazione between '2019-02-01' and '2019-07-01'

--7. Totale degli importi per ogni anagrafico, 
--Select Nome, Cognome, Sum(Importo) as ImportoTotale from DatiAnagrafici
--INNER JOIN 
--Verbali ON 
--DatiAnagrafici.IDAnagrafica = Verbali.IDAnagrafica
--Group By DatiAnagrafici.IDAnagrafica , Nome, Cognome

--8. Visualizzazione di tutti gli anagrafici residenti a Palermo, 
--Select * from DatiAnagrafici where Citta = 'Palermo'

--9. Query parametrica che visualizzi Data violazione, Importo e decurta mento punti relativi ad una certa data, 
-- la procedure di questo punto si chiama VisualizzaDatiRelativiAdUnaData

--10. Conteggio delle violazioni contestate raggruppate per Nominativo dell’agente di Polizia, 
--non so cosa si intende per contestate quindi ho semplicemente fatto un conteggio 
--Select NominativoAgente, Count(*) as ConteggioPerAgente from Verbali Group By NominativoAgente 

--11. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati 
--per tutte le violazioni che superino il decurtamento di 5 punti, 
--Select Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti from DatiAnagrafici
--INNER JOIN
--Verbali ON
--DatiAnagrafici.IDAnagrafica = Verbali.IDAnagrafica
--Where DecurtamentoPunti >3

--12. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati
--per tutte le violazioni che superino l’importo di 400 euro. 
--Select Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti from DatiAnagrafici
--INNER JOIN
--Verbali ON
--DatiAnagrafici.IDAnagrafica = Verbali.IDAnagrafica
--Where Importo >400