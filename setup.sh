#!/bin/bash
#
# Script sets up the servers
###############

if (( $# == 0 )); then
  echo "Please provide the number of nodes in the cluster as an argument to the script."
  echo "(assumes that node ips are in the format 'nodeX' where 'X' is a number starting with 0)"
  exit
fi

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
" 2> /dev/null &
done
wait
fi

