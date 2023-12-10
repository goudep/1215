#!/bin/bash

# Verify if there are names for CSV and txt file 
if [ $# -ne 2 ]; then
    echo "Entrer deux nom de fichers: 1.CSVà transférer et 2. texte dossier après le transfert"
    exit 1
fi

input_csv="$1"
output_txt="$2"

# Verify if there is a valid csv file
if [ ! -f "$input_csv" ]; then
    echo "CSV dossier non-valide"
    exit 1
fi

# Transfer le CSV to text in table form by using awk command
awk 'BEGIN { FS=","; OFS="\t" } { print $0 }' "$input_csv" > "$output_txt"

echo "Transfert a fini"
