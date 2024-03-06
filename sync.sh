#!/bin/bash

echo "====================================================" >> output.log
date >> output.log
docker run --rm -v "$PWD":/src -v /mnt/sda/local:/mirror centos:centos7 bash /src/docker-entrypoint.sh 2>&1 | tee -a output.log
