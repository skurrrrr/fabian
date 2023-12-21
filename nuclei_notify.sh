#!/bin/bash

echo "SENDING NEW FINDINGS TO DISCORD";
cat nuclei_results.txt | notify -provider-config notify_fabian.yaml;
cat newsubdomains.txt | notify -provider-config notify_newdomains.yaml;
exit;