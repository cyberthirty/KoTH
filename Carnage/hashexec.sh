#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <hash> <hashtype>"
    exit 1
fi

hash="$1"
hashtype="$2"

# Function to convert ROT13 to text
convert_rot13() {
    echo "$1" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

# Function to convert hexadecimal to text
convert_hex() {
    echo "$1" | xxd -r -p
}

case "$hashtype" in
    rot13)
        result=$(convert_rot13 "$hash")
        echo "ROT13 converted: $result"
        ;;
    hex)
        result=$(convert_hex "$hash")
        echo "Hexadecimal converted: $result"
        ;;
    *)
        echo "Unknown hashtype. Please specify 'rot13' or 'hex'."
        exit 1
        ;;
esac

exit 0
