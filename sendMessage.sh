#! /bin/bash

myfile="contacts.txt"

messagedir="messages"

if [ ! -d "$messagedir" ]; then
    mkdir "$messagedir"
fi

send_message() {
    read -p "Enter your number = " source
    if ! grep -q ",$source" "$myfile"; then
        echo "Source number not found in contacts. Add it to contacts."
        return
    fi

    read -p "Enter the number you would like to contact = " destination
    if ! grep -q ",$destination" "$myfile"; then
        echo "Source number not found in contacts. Add it to contacts."
        return
    fi

    read -p "Enter your message: " message
    echo "$source: $message" >>"$messagedir/$destination.txt"
    echo "Message sent to $destination."
}
