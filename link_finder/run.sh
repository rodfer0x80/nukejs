#!/bin/bash

if [[ ! -d venv ]]; then
    python3 -m venv venv
fi
source venv/bin/activate &&\
    pip install -r requirements.txt

while read url ; do echo e "\n\n --------- URL: " $url "-----------" ;  python3 linkfinder.py -i $url -o cli; done < "$1"

