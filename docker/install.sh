#!/bin/bash

# THIRDPARTY=/tmp/tools

# mkdir -p ${THIRDPARTY}

# pushd ${THIRDPARTY}

git clone -b v0.4.0 https://github.com/jangsoopark/openspeech.git
pushd openspeech
pip install -e .

# conda install -y pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch -c nvidia

# pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113
pip install torchaudio==0.12.1
pip install pytorch-lightning==1.7.0
# conda install -y -c pytorch torchaudio cudatoolkit=11.3
# conda install -y -c conda-forge librosa

git clone https://github.com/1ytic/warp-rnnt
pushd warp-rnnt/pytorch_binding
python setup.py install
popd

git clone --recursive https://github.com/parlance/ctcdecode.git
pushd ctcdecode 
pip install .
popd
popd
# popd

git clone https://github.com/jangsoopark/ClovaCall.git

# cp -r ${THIRDPARTY}/openspeech/openspeech_cli ./

