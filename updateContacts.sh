#!/bin/bash 

myfile="contacts.txt"

update_record() 

{

    read -p "Enter the name you'd like to update: " name

    if grep -q "^$name," "$myfile"; then

        echo "Contact = $name found." 

        contact=$(grep "^$name," "$myfile")

        echo "Existing contact: $contact" 

        read -p "Enter 1 to update Name, 2 to update Mobile Number, 3 to update both: " choice


        case $choice in

            1)
                current_name=$(echo "$contact" | cut -d ',' -f 2)
                current_number=$(echo "$contact" | cut -d ',' -f 3)

                read -p "Enter the new contact name: " new_name

                sed -i "s/^$name,$current_name,$current_number/$name,$new_name,$current_number/" "$myfile"
                echo "Contact name updated successfully." 
                ;;


            2)
                current_name=$(echo "$contact" | cut -d ',' -f 2)
                current_number=$(echo "$contact" | cut -d ',' -f 3)

                read -p "Enter the new number: " new_number

                sed -i "s/^$name,$current_name,$current_number/$name,$current_name,$new_number/" "$myfile"
                echo "Price updated successfully." 
                ;;

             3)
                current_name=$(echo "$contact" | cut -d ',' -f 2)
                current_number=$(echo "$contact" | cut -d ',' -f 3)

                read -p "Enter the new contact name: " new_name
                read -p "Enter the new number: " new_number

                sed -i "s/^$name,$current_name,$current_number/$name,$new_name,$new_number/" "$myfile"
                # sed -i "s/^$id,[^,]*,[^,]*/$id,$new_name,$new_price/" "$myfile" 

                echo "Contact name and number updated successfully." 
                ;;

            *)

                echo "Invalid choice. Please enter 1, 2, or 3." 
                ;;
        esac
    else
        echo "Contact with name = $name not found." 
    fi

}

update_record
