#!/bin/bash
source addContacts.sh
source deleteContacts.sh
source displayContacts.sh
source searchContacts.sh
source updateContacts.sh
source sendMessage.sh
source viewMessage.sh

while true; do
        read -p "1 Add Contact 2 Delete Contact 3 Display Contact 4 Search Contact 5 Update Contact
        6 Send Message 7 View Messages 8 Exit: " ch
        case $ch in
        1) add_contacts ;;
        2) delete_contacts ;;
        3) display_contacts ;;
        4) search_contacts ;;
        5) update_contacts ;;
        6) send_message ;;
        7) view_message ;;
        8) break ;;
        *) echo "invalid choice" ;;
        esac
done
