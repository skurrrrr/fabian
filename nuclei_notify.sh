#!/bin/bash

echo "SUBDOMAINS ENUMERATED, RUNNING NUCLEI";

#nuclei scans subdomains for CVE's
nuclei -list newsubdomains.txt -o nuclei_results.txt;

echo "NUCLEI SCAN FINISHED, CHECKING FOR NEW RESULTS"

echo "SENDING NEW FINDINGS TO DISCORD";
cat nuclei_results.txt | notify -provider-config notify_fabian.yaml;
cat newsubdomains.txt | notify -provider-config notify_newdomains.yaml;
exit;