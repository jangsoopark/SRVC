#!/bin/bash

for st in $(seq 0 10 600); do
    python srvc.py \
    --hr_video=/workspace/datasets/yuv/78864945.yuv \
    --lr_video=/workspace/datasets/resize/h265/78864945_480x270_crf10.mp4 \
    --save_path=/workspace/model \
    --model_name=srvc \
    --lr=1e-4 \
    --batch_size=1 \
    --start_time=$st \
    --end_time=`expr $st + 10` \
    --sampling_interval=0 \
    --update_interval=10 \
    --coord_frac=1.0 \
    --num_epochs=1 \
    --fps=24 \
    --ff_nchunks=0 \
    --hr_size=1920,1080 \
    --lr_size=480,270 
done 

