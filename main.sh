#!/bin/bash
source addContacts.sh
source deleteContacts.sh
source displayContacts.sh
source searchContacts.sh
source updateContacts.sh
source sendMessage.sh
source viewMessage.sh

while true; do
        echo -e "1. Add Contact\n2. Delete Contact\n3. Display Contact\n4. Search Contact\n5. Update Contact\n6. Send Message\n7. View Messages\n8. Exit"
        read -p "Choose an option: " ch

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
