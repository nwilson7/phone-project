#! /bin/bash

myfile="Contacts.txt"

if [ ! -f "$myfile" ]; then
    echo "the file with name $myfile does not exist "
else
    echo "Contacts ...... "
    cat "$myfile"
fi
