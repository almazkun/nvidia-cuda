FROM nvidia/cuda:11.0-base-ubuntu20.04

ENV DEBIAN_FRONTEND noninteractive

RUN rm /etc/apt/sources.list.d/cuda.list \
    && apt-key del 7fa2af80 \
    && apt-get update && apt-get install -y --no-install-recommends wget \
    && wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb \
    && dpkg -i cuda-keyring_1.0-1_all.deb 

RUN apt-get -qy update 

RUN apt-get -qy --no-install-recommends install \
    tzdata \
    git \
    htop \
    less \
    g++ \
    libopenblas-dev \
    libsasl2-2 \
    libsasl2-modules \
    libsasl2-modules-gssapi-mit \
    python3 \
    python3-pip \
    openjdk-8-jre \
    supervisor \
    unixodbc \
    graphviz \
    wget \
    curl \
    cron \
    tmpreaper \
    logrotate \
    sudo \
    vim \
    libaio1 \
    lsb-release \
    libgpuarray3 \
    libcublas-11-0 \
    libcufft10 \
    libcudart10.1 \
    libcublas10 \
    libcurand10 \
    libcusolver10 \
    libcusparse-11-0 \
    libcudnn8 \
  && rm -rf /var/lib/apt/lists/*

RUN python3 -c "print('Hello 22.04')"