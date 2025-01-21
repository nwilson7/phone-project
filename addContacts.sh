#! /bin/bash

myfile="Contacts.txt"

if [ ! -f "$myfile" ]; then
        touch "$myfile"
        echo "NAME,MNUMBER" > "$myfile"
fi

add_Contacts()
{
    read -p "Enter the name = " name
        if grep -q "^$name," "$myfile" ;then
                echo "id = $name already exists"
                return
        fi
        read -p "Enter the mnumber = " mnumber
        if grep -q ",$pname," "$myfile" ;then
                echo "productname = $pname already exists"
                return
        fi

}