#! /bin/bash

myfile="contacts.txt"

delete_prod() {
    if [ ! -f "$myfile" ]; then
        echo "File = $myfile does not exist"
    else
        read -p "Enter the name that needs to be deleted" name

        if grep -q "^$name," "$myfile"; then
            echo "Contact exists"
            sed -i "/$name,/d" "$myfile"
            echo "Deleted contact with name = $name"
        else
            echo "Contact with name = $name does not exist"
        fi
    fi
}

delete_prod
