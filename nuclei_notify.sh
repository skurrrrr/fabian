#!/bin/bash

echo "SENDING NEW FINDINGS TO DISCORD";
anew nuclei_results.txt | notify -provider-config notify_config.yaml;