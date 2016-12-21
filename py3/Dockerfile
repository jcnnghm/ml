FROM nvidia/cuda:8.0-cudnn5-devel
MAINTAINER justin@bulletprooftiger.com

ADD install_py3.sh install_py3.sh
RUN ./install_py3.sh
RUN mkdir /work
WORKDIR /work

ENV PATH /root/anaconda3/bin:$PATH

RUN conda create -y --name=venv python=3 anaconda
RUN /bin/bash -c "source activate venv && conda install -c https://conda.anaconda.org/menpo -y opencv3"
RUN /root/anaconda3/envs/venv/bin/pip install moviepy
RUN /root/anaconda3/envs/venv/bin/pip install --upgrade pip
RUN /root/anaconda3/envs/venv/bin/pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.0-cp35-cp35m-linux_x86_64.whl
RUN /root/anaconda3/envs/venv/bin/pip install keras
