#!/bin/bash

while true; do 
    # Let client enter name of folder 
    read -p "Entrer le nom de répertoire: " source_dir
    
    if [ ! -d "$source_dir" ]; then
        echo "La répertoire n'existe pas. "
    else break
    fi
done

# Create the backup file with folder name_date.zip 
backup_filename="${source_dir}_$(date +"%Y%m%d").zip"

zip -r "$backup_filename" "$source_dir"

echo "Backup completed $backup_filename"

