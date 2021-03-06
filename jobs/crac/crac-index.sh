#!/bin/bash
#BSUB -J crac-index_job            # LSF job name
#BSUB -o crac-index_job.%J.out     # Name of the job output file
#BSUB -e crac-index_job.%J.error   # Name of the job error file

# load variables
NUM_THREAD=$1

DATASET_PARAM=$2
source $DATASET_PARAM

source /project/itmatlab/aligner_benchmark/jobs/settings/variable.sh

# define tool
TOOL="crac"

# define library
LIBRARY=$DATASET

# load crac library
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CRAC_LIB


# define output path
OUTPUT_INDEX_PATH=$OUTPUT_ROOT_PATH/$TOOL/index/$GENOME_NAME
mkdir -p $OUTPUT_INDEX_PATH
OUTPUT_ALIGNMENT_PATH=$OUTPUT_ROOT_PATH/$TOOL/alignment/$LIBRARY

# build index
$CRAC_PATH/$CRAC_INDEX_CMD -v index $OUTPUT_INDEX_PATH/$GENOME_NAME $GENOME_PATH/$GENOME_FILE
