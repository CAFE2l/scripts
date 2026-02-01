#!/bin/bash


frutas=("maçã" "banana" "uva")
echo ${frutas[2]}


frutas[0]="Melancia"

echo ${frutas[0]}


echo ${frutas[@]}


frutas[3]="melao"
echo ${frutas[@]}

echo ${#frutas[@]}


unset frutas[1]
echo ${frutas[@]}

for fruta in ${frutas[@]}; do
 echo $fruta
done

declare -A capitais
capitais["Brasil"]="Brasília"
capitais["Canadá"]="Ottawa"
capitais["Japão"]="Tokyo"


for pais in ${!capitais[@]}; do
    echo "A capital do $pais é ${capitais[$pais]}"
done
