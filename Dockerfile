FROM continuumio/miniconda3:latest AS Base
RUN apt-get update
#RUN apt-get install -y build-essential
RUN apt-get install -y g++
# Install Python
RUN conda install python=3.8

FROM Base as Torch
ARG CUDA=CPU
ARG TORCH=1.11.0
RUN pip install torch==$TORCH
RUN pip install torch-scatter torch-sparse torch-cluster torch-spline-conv -f https://data.pyg.org/whl/torch-1.11.0+CPU.html
RUN pip install torch-geometric

FROM Torch

COPY requirements.txt requirements.txt
RUN pip install -q -q -r requirements.txt