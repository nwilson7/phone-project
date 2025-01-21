#! /bin/bash

messagedir="messages"

view_message() {
    read -p "1 View All Messages 2 View A Single Message: " ch

    case $ch in
    1)
        view_all_messages
        ;;
    2)
        view_single_message
        ;;
    *)
        echo "Invalid choice"
        ;;
    esac
}

view_all_messages() {
    if [[ -z "$(ls "$messagedir")" ]]; then
        echo "No messages found."
        return
    fi

    echo "All messages: "
    for file in "$messagedir"/*.txt; do
        if [[ -f "$file" ]]; then
            echo "Messages for $(basename "$file" .txt):"
            tail -r "$file"
        fi
    done

    rm -f "$messagedir"/*.txt
    echo "All messages have been deleted."
}

view_single_message() {
    read -p "Enter the number you would like to view a message for: " number

    file="$messagedir/$number.txt"

    if [[ ! -f "$file" ]]; then
        echo "No messages found for $number."
        return
    fi

    last_message=$(tail -n 1 "$file")

    echo "Last message for $number:"
    echo "$last_message"

    sed -i '' '$d' "$file"

    if [[ ! -s "$file" ]]; then
        rm "$file"
    fi

    echo "Last message deleted."
}
