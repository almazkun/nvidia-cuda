FROM nvidia/cuda:11.7.0-base-ubuntu20.04

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

RUN python -c "Hello 22.04"