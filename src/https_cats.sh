#!/bin/bash

function http_cat() {
    if [[ "$1" =~ ^[0-9]{3}$ ]]; then
        curl -s "https://http.cat/$1" | awk '/<img src=/ {gsub(/.*src="/,""); gsub(/".*/,""); print}'
    else
        echo "Invalid HTTP status code. Usage: http_cat <HTTP status code>"
    fi
}
