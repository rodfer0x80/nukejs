#!/bin/bash

while read url; do echo -e "\n\n -----URL: " $url "------" ;  curl -s $url  |   ruby extract.rb --url  ; done < "$1"
