#!/bin/bash

mkdir -p models_gridWorld
mkdir -p results_gridWorld
mkdir -p results_gridWorld2

while IFS=, read size lr
do 
	python drl.py --n="$size" --lr="$lr" --episodes=50 --t_seeds=50 --train_feat --fo
done < MC.txt
