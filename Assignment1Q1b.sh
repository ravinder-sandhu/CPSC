#!/usr/bin/env bash

echo -e "\nExcluding cancelled flights\n"
awk -F ',' 'NR==1 {print $18,"Count"} {if ($22==0) {col[$18]++}} END {for (i in col) print i, col[i] | "sort -r -n -k2"}' flightdelays.csv | head -4 | csvlook

echo -e "\nIncluding cancelled flights\n"
awk -F ',' 'NR==1 {print $18,"Count"} {col[$18]++} END {for (i in col) print i, col[i] | "sort -r -n -k2"}' flightdelays.csv | head -4 | csvlook

echo -e "\n RAVINDER SINGH"
