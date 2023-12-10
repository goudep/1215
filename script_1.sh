#!/bin/bash

# Vérifie si le nombre d'arguments est correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 file1 file2"
    exit 1
fi

# Nom des fichiers
file1=$1
file2=$2

# Vérifie si le deuxième fichier existe
if [ ! -f "$file2" ]; then
    echo "Le fichier $file2 n'existe pas."
    exit 1
fi

# Si le premier fichier n'existe pas, le crée en copiant le contenu du deuxième fichier
if [ ! -f "$file1" ]; then
    cp $file2 $file1
else
    # Ajoute le contenu du deuxième fichier à la fin du premier fichier
    cat $file2 >> $file1
fi

echo "Opération terminée avec succès."
