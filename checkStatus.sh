#!/bin/bash

declare -A webistes=(
    ["Curso em video"]="https://cursoemvideo.com"
    ["Alura"]="https://www.alura.com.br/?srsltid=AfmBOooKWDB-hqCJyt2x2BXBUu5iLQGKnGkSwImJhYIPrysobQ-cQM_O"
    ["Estudonauta"]="https://www.estudonauta.com"
)

test_website() {
    local url=$1

    if curl -Is --max-time 10 "$url" > /dev/null 2>&1; then
        echo "Online"
    else
        echo "Offline"    
    fi
}


for name in "${!websites[@]}"; do
    url=${websites[$name]}
    status=$(test_website "$url")
    echo "$name ($url) - $status)"

done

