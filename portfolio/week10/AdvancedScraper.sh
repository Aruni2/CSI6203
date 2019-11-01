#!/bin/bash
#Student Id "10497312"

Tempfile=$(mktemp)
curl -s -o ecuedu.html https://www.ecu.edu.au/degrees/study-areas/science
awk -F"=" '/.*https.*\/science.*title=.*/ {print $3}' ecuedu.html | \
awk -F"\"" '{print $2}' | sort -u
rm "$Tempfile"