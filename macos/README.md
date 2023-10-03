# Connessione con Terminus

1. L’applicativo è scaricabile al seguente indirizzo: https://termius.com/. Tramite il programma GitHub Education è possibile ottenere tutte le funzionalità premium dell’applicazione. Esiste una versione gratuita di questo che non ho potuto provare ma, come riportato dal sito, dovrebbe permettere di instaurare una connessione SSH.
2. Aperto l’applicativo premere su "New Host" (vedi screenshot/2).
3. Si aprirà lateralmente una finestra di configurazione. Inserire in questa tutti i parametri di connessione ad AWS e specificare un label. Tra le opzioni SSH inserire "hadoop" come username e selezionare la chiave di connessione generata da AWS tramite l’opzione set a key (vedi screenshot/3).
4. Il nuovo host configurato dovrebbe apparire nella schermata, per connettersi fare click destro > Connect > SSH  (vedi screenshot/4). 

Per quanto riguarda il port forwarding: 
  - Selezionare l’opzione "Port Forwarding" nel menù laterale sinistro dell'applicazione
  - Premere sull’opzione "New Forwarding" in alto a sinistra
  
Immettere le seguenti configurazioni: 
  - Label: qualsiasi nome identificativo del forwarding
  - Local port number: XXXX (sostituire con 20888 , 19888 o 8088)
  - Bind address: localhost
  - Intermediate Host: scegliere l’host configurato in precedenza 
  - Destination address: ec2-XXX-XXX-XXX-XXX.compute-1.amazonaws.com (immettere qui il proprio indirizzo)
  - Destinatio port number: la stessa porta immessa in Local port number (vedi screenshot/5)
A questo punto per attivare il forward basta semplicemente fare click destro su uno di quelli creati e premere "Connect" (vedi screenshot/6).

