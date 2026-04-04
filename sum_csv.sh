#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage: $0 <csv_filename>"
	exit 1
fi

FILE="$1"

if [ ! -f "$FILE" ]; then
	echo "Error: FIle '$FILE' not found."
	exit 1
fi

while IFS=',' read -r num1 num2
	do
		sum=$((num1 + num2))
		echo "$num1 + $num2 = $sum"
	done < "$FILE"
