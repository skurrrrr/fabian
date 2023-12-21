#!/bin/bash

cat banner.txt;
subfinder -dL targets.txt -o subdomains.txt;
echo "SUBDOMAINS ENUMERATED, RUNNING NUCLEI";
nuclei -list subdomains.txt -o nuclei_results.txt;
echo "NUCLEI SCAN FINISHED, CHECKING FOR NEW RESULTS"