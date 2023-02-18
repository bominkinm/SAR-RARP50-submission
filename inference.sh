#!/bin/bash

test_dir=$1
path=$(dirname $(realpath $0))
echo --test_dir ${path}/${test_dir} 
echo --out_dir ${path}/"*_predictions" 
python3 inference.py --task segmentation --test_dir ${test_dir} --out_dir segmentation_predictions ;
python3 inference.py --task multitask --test_dir ${test_dir} --out_dir multitask_predictions ; 
python3 inference.py --task actions --test_dir ${test_dir} --out_dir action_predictions
