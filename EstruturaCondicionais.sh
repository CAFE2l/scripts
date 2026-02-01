#!/bin/bash

read -p "Diga a sua idade: " idade
if [ $idade -ge 18 ]; then
    echo "Você é maior de idade"
elif [ $idade -ge 16 ]; then
    echo "Você é menor de idade mas ja pode votar"
else
    echo "Você é menor de idade"
fi

read -p "Diga um número de 1 à 3: " escolha

case $escolha in
    1)
        echo "Você escolheu a opção 1"
        ;;
    2) 
        echo "Você escolheu a opção 2"
        ;;
    3)
        echo "Você escolheu a opção 3"
        ;;
    *)
        echo "Opção invalida"
        ;;
esac