# Use the official Python 3.12 slim image as our base
FROM python:3.12-slim

# Prevent Python from writing .pyc files and buffer output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies (Fixed for Debian Trixie)
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip \
    pkg-config \
    libx11-dev \
    libopenblas-dev \
    libgtk-3-dev \
    libboost-python-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip to ensure smooth installation
RUN pip install --upgrade pip

# Install Dlib (This will take 5-15 mins - BE PATIENT)
RUN pip install dlib

# Install OpenCV (Headless version for servers) and Numpy
RUN pip install opencv-python-headless numpy

# Final Verification: Print versions of tools
RUN python3 -c "import dlib; import cv2; print('Dlib Version:', dlib.__version__); print('OpenCV Version:', cv2.__version__)"