#!/bin/bash 

# Qauntify hash antibody tag oligos (HTO)
salmon alevin -l ISR -i hto_index \
-1 SRR8758327_1.fastq.gz -2 SRR8758327_2.fastq.gz \
-o alevin_hto -p 16 --citeseq --featureStart 0 \
--featureLength 15 --naiveEqclass