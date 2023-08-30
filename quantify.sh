#!/bin/bash

# Quantify the RNA read with salmon alevin
salmon alevin -l ISR -i salmon_partial_sa_index \
-1 SRR8758323_1.fastq.gz -2 SRR8758323_2.fastq.gz \
-o alevin_rna -p 8 --tgMap txp2gene.tsv \
--chromium --dumpFeatures --expectCells 35000