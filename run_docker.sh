#!/usr/bin/env bash

docker build -t avneeshver/udacitymachinelearning .
docker images
docker container run -p 80:80 --name udacitymachinelearning avneeshver/udacitymachinelearning
