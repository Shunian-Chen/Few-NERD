#!/bin/bash

# 5-way 1~5-shot
python3 train_demo.py  --mode inter \
--lr 1e-4 --batch_size 8 --trainN 5 --N 5 --K 1 --Q 1 \
--train_iter 10000 --val_iter 500 --test_iter 5000 --val_step 1000 \
--max_length 64 --model structshot --tau 0.32 >> result.txt

# 5-way 5~10-shot
python3 train_demo.py  --mode inter \
--lr 1e-4 --batch_size 1 --trainN 5 --N 5 --K 5 --Q 5 \
--train_iter 10000 --val_iter 500 --test_iter 5000 --val_step 1000 \
--max_length 32 --model structshot --tau 0.318 >> result.txt

# 10-way 1~5-shot
python3 train_demo.py  --mode inter \
--lr 1e-4 --batch_size 4 --trainN 10 --N 10 --K 1 --Q 1 \
--train_iter 10000 --val_iter 500 --test_iter 5000 --val_step 1000 \
--max_length 64 --model structshot --tau 0.32 >> result.txt

# 10-way 5~10-shot
python3 train_demo.py  --mode inter \
--lr 1e-4 --batch_size 1 --trainN 10 --N 10 --K 5 --Q 1 \
--train_iter 10000 --val_iter 500 --test_iter 5000 --val_step 1000 \
--max_length 32 --model structshot --tau 0.434 >> result.txt