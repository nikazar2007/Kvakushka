#!/bin/bash
printf "%-15s %-7s %-7s %-7s %-7s\n" "Файл" "A" "T" "G" "C"
echo "-----------------------------------------------"
for file in *.fasta; do
	[ ! -s "$file" ] && continue 
	seq=$(grep -v "^>" "$file" | tr -d '\n')
	a=$(echo "$seq" | grep -o "A" | wc -l)
	t=$(echo "$seq" | grep -o "T" | wc -l)
	g=$(echo "$seq" | grep -o "G" | wc -l)
	c=$(echo "$seq" | grep -o "C" | wc -l)
	printf "%-15s %-7s %-7s %-7s %-7s\n" "$file" "$a" "$t" "$g" "$c"
done
