#!/bin/bash

if (( $# > 0 )); then
for i in $(seq 0 $1); do
ssh -T -o StrictHostKeyChecking=no node$i "\
sudo apt update; \
sudo apt install -y python3-numpy \
                    gnuplot \
                    cmake \
                    build-essential \
                    protobuf-compiler \
                    libprotobuf-dev \
                    libssl-dev \
                    libevent-dev \
                    valgrind; \
mkdir -p /local/extra/experiments; \
" 2> /dev/null
done
fi

