#!/bin/bash

WORK_DIR=/ipsl/jangsoopark/SRVC

docker run \
	--name asdf \
	-p 8888:8888 \
	-v $WORK_DIR:/workspace \
	-it --rm \
	--privileged \
	--ipc=host \
	--gpus=all \
	--shm-size 64G \
	tf-1.15
