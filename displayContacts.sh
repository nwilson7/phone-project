#! /bin/bash

myfile="Contacts.txt"

display_contacts() {
    if [ ! -f "$myfile" ]; then
        echo "the file with name $myfile does not exist "
    else
        echo "Contacts ...... "
        cat "$myfile"
    fi
}
