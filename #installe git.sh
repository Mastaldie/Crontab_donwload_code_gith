#installe git
sudo yum -y install git
#creer un fichier.sh ou on place le script qui permet de verifier si le fichier server.conf exist sinon il le telecharge



#!/bin/bash

# Chemin vers le fichier server.conf
FICHIER_CONF="server.conf"

# Vérifie si le fichier existe
if [ -f "$FICHIER_CONF" ]; then
    echo "Le fichier $FICHIER_CONF existe."
else
    echo "Le fichier $FICHIER_CONF n'existe pas. Téléchargement depuis Git..."
    git clone https://github.com/Mastaldie/Mastaldie.git  # Remplacez <URL_du_repo> par l'URL de votre dépôt Git
fi

# Exécutez le fichier (remplacez cette ligne par votre commande d'exécution)
./$FICHIER_CONF

# Journalise l'exécution dans un fichier de log
LOG_FILE="execution.log"
echo "$(date): Exécution du fichier $FICHIER_CONF" >> "$LOG_FILE"
#donner l'autorisation au fichier.sh
chmod +x fichier.sh
#executer
./fichier.sh

