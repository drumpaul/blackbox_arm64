INSTALLAZIONE

- avviare la macchina con una iso di RancherOS
- in console impostare la password per l'utente "rancher"

$ sudo passwd rancher

- accedere alla macchina bootata con rancheros in ssh

- scaricare il progetto github "blackbox"

$ wget https://raw.githubusercontent.com/drumpaul/blackbox/master/clone.sh && chmod +x clone.sh && ./clone.sh && cd blackbox && chmod +x install-rancheros.sh && ./install-rancheros.sh

- eseguire script install-rancheros.sh con privilegi elevati
$ sudo 
