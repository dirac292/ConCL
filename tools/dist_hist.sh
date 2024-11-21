#!/usr/bin/env bash
PYTHON=${PYTHON:-"python3"}

CFG=$1
GPUS=$2
PY_ARGS=${@:3}
PORT=${PORT:-29500}

# Select GPUs 2 and 3
export CUDA_VISIBLE_DEVICES=2,3

WORK_DIR=$(echo ${CFG%.*} | sed -e "s/configs/work_dirs/g")/

torchrun --nproc_per_node=$GPUS --master_port=$PORT \
    tools/train.py $CFG --work_dir $WORK_DIR --seed 0 --launcher pytorch ${PY_ARGS}
