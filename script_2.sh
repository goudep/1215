#!/bin/bash

# Examiner si le string entrée est dans le dossier 
if [ $# -eq 0 ]; then
    echo "Specifiez le dossier à rechercher"
    exit 1
fi

# Verifier si le dossier existe 
file="$1"
if [ ! -f "$file" ]; then
    echo "Le dossier est invalide"
    exit 1
fi

# Assigner la valeur d'entrée au variable "keyword"
read -p "Entrer le string à chercher: " keyword

# Définir un variable stocker le sortie de recherche 
result=$(grep -in "$keyword" "$file")

# Verifier si le result == 0, aucune string est trouvée
if [ -z "$result" ]; then
    echo "Aucune chaîne correspondante trouvée"
else
    # Afficher le nombre de ligne et le string qu'on cherche 
    echo "$result"
fi
