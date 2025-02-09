# Use NVIDIA CUDA base image
FROM nvidia/cuda:12.3.1-base-ubuntu22.04

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
		#start vizdoom
		build-essential \
    bzip2 \
    cmake \
    curl \
    g++ \
    git \
    make \
    nasm \
    openssh-server \
    tar \
    timidity \
    vim \
    zip \
		libboost-all-dev \
    libbz2-dev \
    libfluidsynth-dev \
    libgme-dev  \
    libgtk-3-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblua5.1-dev \
    libmpg123-dev \
    libopenal-dev \
    libpython3.6 \
    libsdl2-dev \
    libsndfile1-dev \
    libwildmidi-dev \
    python3-pip \
    zlib1g-dev \
    x11-apps \
		#end vizdoom
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip3 install -r requirements.txt
