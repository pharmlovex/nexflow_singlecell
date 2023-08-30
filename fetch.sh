#!/bin/bash 

# Fetching  raw RNA & antibody sequencing data 

# RNA experiment
wget --content-disposition  -nv  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR875/003/SRR8758323/SRR8758323_2.fastq.gz && 
wget --content-disposition  -nv  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR875/003/SRR8758323/SRR8758323_1.fastq.gz &&

# ADT experiment
wget --content-disposition  -nv  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR875/005/SRR8758325/SRR8758325_1.fastq.gz &&
wget --content-disposition  -nv  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR875/005/SRR8758325/SRR8758325_2.fastq.gz &&

# HTO experiment
wget --content-disposition  -nv  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR875/007/SRR8758327/SRR8758327_1.fastq.gz &&
wget --content-disposition  -nv  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR875/007/SRR8758327/SRR8758327_2.fastq.gz