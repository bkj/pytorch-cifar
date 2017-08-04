#!/bin/bash

mkdir -p results

# --
# ResNet18

CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 10 > ./results/resnet18_2-linear-10
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 25 > ./results/resnet18_2-linear-25
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 50 > ./results/resnet18_2-linear-50
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 75 > ./results/resnet18_2-linear-75
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 100 > ./results/resnet18_2-linear-100
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 150 > ./results/resnet18_2-linear-150
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 200 > ./results/resnet18_2-linear-200
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 250 > ./results/resnet18_2-linear-250
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 300 > ./results/resnet18_2-linear-300
CUDA_VISIBLE_DEVICES=1 ./main.py --epochs 350 > ./results/resnet18_2-linear-350

# --
# Densenet

CUDA_VISIBLE_DEVICES=0 ./main.py --net densenet121 > ./results/densenet121

./main.py --epochs 10 > ./results/resnet18-linear-10