# docker build . -t tf-1.15
# Base container: ddocker pull pytorch/pytorch:1.13.0-cuda11.6-cudnn8-devel
# docker pull nvidia/cuda:11.2.0-devel-ubuntu18.04
FROM tensorflow/tensorflow:1.15.5-gpu

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-key del 7fa2af80 && apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub

RUN apt -y update &&\
    apt install -y wget vim emacs nano libgl1-mesa-glx && \
    apt install -y git && \
    apt install -y libsndfile1 ffmpeg libopencv-videoio-dev && \
    apt install -y python3-opencv

RUN mkdir -p /workspace
ARG work_dir=/workspace

WORKDIR ${work_dir}

# COPY requirements.txt requirements.txt

RUN pip3 install jupyterlab
# RUN pip3 install -r requirements.txt

# COPY install.sh install.sh
# RUN ./install.sh
