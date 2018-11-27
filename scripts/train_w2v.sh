#!/bin/bash

CORPORA_DIR=/scratch/gobi1/mebrunet/corpora
CODE_DIR=/h/mebrunet/Code/understanding-bias

TEXT_FILE=$CORPORA_DIR/nytselect.txt
INDEX_FILE=$CORPORA_DIR/nytselect.meta.json
OUTDIR=/scratch/gobi1/mebrunet/w2v
WORKERS=11
PERT_MAP=/scratch/gobi1/mebrunet/w2v/pert_map.json


train() {
  python $CODE_DIR/scripts/train_w2v.py $TEXT_FILE $INDEX_FILE $OUTDIR $WORKERS $1 $PERT_MAP
}

train aggravate_10000_1
train correct_10000_1
