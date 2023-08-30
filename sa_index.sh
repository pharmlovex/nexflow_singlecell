#!/bin/bash
# Indexing the reference sequence

#wget --content-disposition  -nv http://refgenomes.databio.org/v2/asset/hg38/salmon_partial_sa_index/archive?tag=default

# tar -xvzf salmon_partial_sa_index__default.tgz

# Extract file that maps transcript name tp gene name

grep "^>" salmon_partial_sa_index/gentrome.fa | cut -d " " -f 1,7 --output-delimiter=$'\t' - | sed 's/[>"gene_symbol:"]//g' > txp2gene.tsv