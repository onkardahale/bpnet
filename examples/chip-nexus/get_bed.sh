#!/bin/bash
# Author: Onkar A Dahale
# Date: 23rd April 2024

base_url="http://mitra.stanford.edu/kundaje/avsec/chipnexus/paper/data"

# Download fasta file
wget "$base_url/mm10.subset.fa.gz" -O data/mm10.subset.fa.gz

# Extract the fasta file
gzip -d data/mm10.subset.fa.gz

# Download chip-nexus files
wget "$base_url/chip-nexus/Oct4/counts.pos.subset.bw" -P data/chip-nexus/Oct4/
wget "$base_url/chip-nexus/Oct4/counts.neg.subset.bw" -P data/chip-nexus/Oct4/
wget "$base_url/chip-nexus/Oct4/idr-optimal-set.summit.subset.bed.gz" -P data/chip-nexus/Oct4/

wget "$base_url/chip-nexus/Sox2/counts.pos.subset.bw" -P data/chip-nexus/Sox2/
wget "$base_url/chip-nexus/Sox2/counts.neg.subset.bw" -P data/chip-nexus/Sox2/
wget "$base_url/chip-nexus/Sox2/idr-optimal-set.summit.subset.bed.gz" -P data/chip-nexus/Sox2/

wget "$base_url/chip-nexus/Nanog/counts.pos.subset.bw" -P data/chip-nexus/Nanog/
wget "$base_url/chip-nexus/Nanog/counts.neg.subset.bw" -P data/chip-nexus/Nanog/
wget "$base_url/chip-nexus/Nanog/idr-optimal-set.summit.subset.bed.gz" -P data/chip-nexus/Nanog/

# Download bias tracks
wget "$base_url/chip-nexus/patchcap/counts.pos.subset.bw" -P data/chip-nexus/patchcap/
wget "$base_url/chip-nexus/patchcap/counts.neg.subset.bw" -P data/chip-nexus/patchcap/
