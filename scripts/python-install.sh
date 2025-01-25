#!/usr/bin/env bash

PYTHON_VERSION=3.9.7
PYTHON_URL=https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz

# Perform a system update
#sudo dnf update -y

# Download packages
sudo dnf install -y gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite \
sqlite-devel openssl-devel xz xz-devel libffi-devel wget

# Download python source
wget $PYTHON_URL
tar xvf Python-3.9.7.tar.xz
cd Python-3.9.7

# Compile - altinstall will avoid overwriting any existing Python library allowing use of multiple versions
./configure --enable-optimizations
sudo make altinstall

# Check
python3.9 --version


