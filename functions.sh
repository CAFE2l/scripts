#!/bin/bash

variavel_global=1

saudacao() {
    echo "Hello, World!"
}

saudacao2() {
    echo "Hello, $1"
}

saudacao
saudacao2 "John"

soma() {
    echo "A soma de $1 com $2 é igual à $(($1+$2))"
}

soma 3 5


exibir_argumentos() {
    echo "Foram passados $# argumentos"
    echo "Os argumentos passados foram $@"
}


exibir_argumentos 1 2 3 4 5 6

soma3() {
    total=0
    for i in $@; do
        total=$((total+i))
    done
    echo $total
}


soma3 10 15 2 3 6


soma4() {
    resultado=0
    for i in $@; do
        resultado=$((resultado+i))
    done
    return $resultado
}


altera_valor() {
    local variavel_global=5
}

soma4 10 15 2 3 6

echo $?

echo $variavel_global
altera_valor
echo $variavel_global