FROM continuumio/miniconda3:latest AS base
RUN apt-get update
#RUN apt-get install -y build-essential
RUN apt-get install -y g++
# Install Python
RUN conda install python=3.8

FROM base as torch
ARG CUDA=CPU
ARG TORCH=1.11.0
RUN pip install torch==$TORCH
RUN pip install -qq torch-scatter -f https://data.pyg.org/whl/torch-$TORCH+$CUDA.html
RUN pip install -qq torch-sparse -f https://data.pyg.org/whl/torch-$TORCH+$CUDA.html
RUN pip install -qq torch-cluster -f https://data.pyg.org/whl/torch-$TORCH+$CUDA.html
RUN pip install -qq torch-spline-conv -f https://data.pyg.org/whl/torch-$TORCH+$CUDA.html
RUN pip install -qq torch-geometric
RUN pip install -qq jupyter

FROM torch

COPY requirements.txt requirements.txt
RUN pip install -qqr requirements.txt