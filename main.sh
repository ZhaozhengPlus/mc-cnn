#!/bin/bash
#PBS -l walltime=96:00:00
#PBS -l mem=24GB
#PBS -j oe
#PBS -M jure.zbontar@gmail.com
 
module purge
module load cuda 
module load cudnn
module load opencv

export TERM=xterm

cd $HOME/devel/kitti.jrnl
./main.lua $args
