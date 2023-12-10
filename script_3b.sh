#!/bin/bash 
while true; do

    echo "Enter csv:"
    read csv_file

    if [[ ! -f $csv_file ]]; then
        echo " le file $csv_file does not exist."
    else
        break
    fi
done

while true; do

    echo "Enter name of text with '.txt' in the end:"
    read txt_file
    if [[ -f $txt_file ]]; then
        echo "File $txt_file already existed, do you want to overwrite(yes/no)"
        read answer 
        if [[ $answer == 'yes' ]]; then
            break 
        fi
    else 
        break
    fi
    
done

sed 's/,/\t/g' $csv_file > $txt_file

echo " Conversion $txt_file completed."