#!/bin/bash

if [[ ! -d venv ]]; then
    python3 -m venv venv 
fi
source venv/bin/activate &&\
    pip install -r requirements.txt &&\
    while read url; do python3 SecretFinder.py -i $url -o cli ; done < "$1"
