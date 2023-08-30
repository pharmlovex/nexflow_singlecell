# Downloading the barcode sequences of the antibody derived tags (ADT) and the hash antibody tag oligos (HTO).
wget --content-disposition  -nv https://ftp.ncbi.nlm.nih.gov/geo/series/GSE128nnn/GSE128639/suppl/GSE128639_MNC_ADT_Barcodes.csv.gz &&
wget --content-disposition  -nv https://ftp.ncbi.nlm.nih.gov/geo/series/GSE128nnn/GSE128639/suppl/GSE128639_MNC_HTO_Barcodes.csv.gz &&

gunzip -c GSE128639_MNC_ADT_Barcodes.csv.gz | awk -F "," '{print $1"\t"$4}' | tail -n +2 > adt.tsv &&
gunzip -c GSE128639_MNC_HTO_Barcodes.csv.gz | awk -F "," '{print $1"\t"$4}' | sed 's/Hashtag /Hashtag_/g' | tail -n +2 > hto.tsv


# Index the feature 

salmon index -t adt.tsv -i adt_index --features -k7 &&
salmon index -t hto.tsv -i hto_index --features -k7