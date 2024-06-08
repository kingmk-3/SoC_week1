#!/bin/bash
for i in $(cat path.txt); do mkdir -p $(echo "$i" | cut -d ";" -f2) && touch $(echo "$(echo "$i" | cut -d ";" -f2)/$(echo "$i" | cut -d ";" -f1)") && mv $(echo "$i" | tr "/" "&") $(echo "$(echo "$i" | cut -d ";" -f2)/$(echo "$i" | cut -d ";" -f1)") ; done
