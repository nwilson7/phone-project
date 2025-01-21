#! /bin/bash

myfile="contacts.txt"

search_contacts() {
        read -p "1 Search By Name 2 Search By Number: " ch

        case $ch in
        1)
                read -p "Enter contact name you want to search for: " name
                if [ ! "$myfile" ]; then
                        echo "File = $myfile doesn't exist."
                else

                        if grep -q "^$name," "$myfile"; then
                                grep "^$name," "$myfile"

                        else
                                echo "contact with name = $name doesn't exist"
                        fi
                fi
                ;;

        2)
                read -p "Enter mobile number you want to search for: " number
                if [ ! "$myfile" ]; then
                        echo "File = $myfile doesn't exist."
                else

                        if grep -iq "$number," "$myfile"; then
                                grep -i "$number," "$myfile"
                        else
                                echo "Contact with mobile number = $number doesn't exist"
                        fi
                fi
                ;;

        *) echo "invalid choice" ;;
        esac

}
