#!/usr/bin/env bash

echo -e "\n"

awk -F ',' 'NR==1 {print $17,$15} $17=="SFO" {print $17,$15}' flightdelays.csv | head -4 > first3sfo.csv | csvlook first3sfo.csv

echo -e "\n"











