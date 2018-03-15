#!/bin/bash


# Dataset name
DATASET="dataset_human_hg19_RefSeq"


# Genome
GENOME_PATH="/project/itmatlab/aligner_benchmark/dataset/human/genome"
GENOME_FILE="ucsc.hg19.fa"
GENOME_FILES_LIST="chr10.fa,chr19.fa,chr5.fa,chr11.fa,chr12.fa,chr1.fa,chr13.fa,chr2.fa,chr6.fa,chr14.fa,chr15.fa,chr20.fa,chr16.fa,chr21.fa,chr17.fa,chr22.fa,chr7.fa,chr3.fa,chr8.fa,chrX.fa,chrY.fa,chr4.fa,chr18.fa,chr9.fa"
GENOME_NAME="ucsc.hg19"


# Annotation
GTF_PATH="/project/itmatlab/aligner_benchmark/dataset/human/annotation"
GTF_FILE="hg19_RefSeq_genes_ucsc.gtf"


# Reads
#READS_PATH="/project/itmatlab/aligner_benchmark/dataset/human/dataset1"
#READS_FILE="simulated_reads_HG19v1.fa"
#READS_FILE_CHANGE_ID="simulated_reads_HG19v1.changeID.fa"
#READ_1_FILE="simulated_reads_HG19v1.forward.fa"
#READ_1_FILE_CHANGE_ID="simulated_reads_HG19v1.forward.changeID.fa"
#READ_2_FILE="simulated_reads_HG19v1.reverse.fa"
#READ_2_FILE_CHANGE_ID="simulated_reads_HG19v1.reverse.changeID.fa"


# Olego junction file
OLEGO_JUNCTION_FILE="hg19.intron.hmr.bed"

# Olego regression model file
OLEGO_REGRESSION_MODEL_FILE="hg.cfg"

# Olego regression model file prefix
OLEGO_REGRESSION_MODEL_FILE_PREFIX=""

# USEQ annotation file
USEQ_ANNOTATION_PATH="/project/itmatlab/aligner_benchmark/dataset/human/annotation"
USEQ_ANNOTATION_FILE="hg19_RefSeq_refFlat_ucsc.txt"
USEQ_ANNOTATION_PREFIX="hg19_RefSeq_refFlat_ucsc"

# RUM index name
RUM_INDEX_NAME="hg19"
