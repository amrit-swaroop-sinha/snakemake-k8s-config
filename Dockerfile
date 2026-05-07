FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    rsync \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    snakemake \
    snakemake-executor-plugin-kubernetes \
    snakemake-storage-plugin-fs

WORKDIR /workflow