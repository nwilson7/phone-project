#! /bin/bash

myfile="contacts.txt"

if [ ! -f "$myfile" ]; then
        touch "$myfile"
        echo "NAME,MNUMBER" >"$myfile"
fi

add_contacts() {
        read -p "Enter the contact's name = " name
        if grep -iq "^$name," "$myfile"; then
                echo "name = $name already exists"
                return
        fi
        read -p "Enter the mobile number = " mnumber
        if grep -q ",$mnumber" "$myfile"; then
                echo "Mobile Number = $mnumber already exists"
                return
        fi
        echo "$name,$mnumber" >>"$myfile"
}
