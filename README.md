INSTALLAZIONE

- avviare la macchina con una iso di RancherOS
- in console impostare la password per l'utente "rancher"

$ sudo passwd rancher

- accedere alla macchina bootata con rancheros in ssh

- scaricare il progetto github "blackbox"
wget https://raw.githubusercontent.com/drumpaul/blackrancher/master/clone.sh -O install-rancheros.sh && chmod +x install-rancheros.sh

- eseguire script install-rancheros.sh con privilegi elevati
$ sudo 
