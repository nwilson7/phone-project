#!/bin/bash
source addContacts.sh
source deleteContacts.sh
source displayContacts.sh
source searchContacts.sh
source updateContacts.sh
source sendMessage.sh

while true; do
        read -p "1 Add contact 2 Delete contact 3 Display contact 4 Search contact 5 Update contact
        6 Send message 7 View messages 8 Exit " ch
        case $ch in
        1) add_contacts ;;
        2) delete_contacts ;;
        3) display_contacts ;;
        4) search_contacts ;;
        5) update_contacts ;;
        6) send_message ;;
        7) receive_message ;;
        8) break ;;
        *) echo "invalid choice" ;;
        esac
done
