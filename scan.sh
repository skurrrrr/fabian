#!/bin/bash

cat banner.txt;

#delete contents of subscan and newdomains
rm subscan.txt newsubdomains.txt;

#subfinder finds subs, outputs results to file
subfinder -dL targets.txt -o subscan.txt;

#appends subscan to alldomains, sdout goes to newdowmains.txt
#run this line ONLY when adding new domains if you don't want a million notifications
cat subscan.txt | anew allsubdomains.txt >> newsubdomains.txt; 

echo "SUBDOMAINS ENUMERATED, RUNNING NUCLEI";

#nuclei scans subdomains for CVE's
nuclei -list newsubdomains.txt -o nuclei_results.txt;

echo "NUCLEI SCAN FINISHED, CHECKING FOR NEW RESULTS"
