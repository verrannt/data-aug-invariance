# This script trains the TripletCNN architecture on CIFAR-10 with data 
# augmentation and class triplet loss
#
# It is meant to to be run from the root of the repository
# Consider changing the paths to files and directories
#
# CIFAR-10
#
# All-CNN
#
# no-reg bn heavier inv
python train.py \
--data_file /datasets/hdf5/cifar10.hdf5 \
--group_tr train \
--group_val test \
--train_dir ./log/cifar10/tripletcnn/noreg/bn/inv/r31/ \
--daug_params heavier.yml \
--train_config_file config_train/cifar/tripletcnn/noreg_bn.yml \
--aug_per_img_tr 16 \
--daug_invariance_params loss1_exp.yml \
--class_invariance_params noinv.yml \
--save_model_every 10 \
--no_fit_generator \
--triplet_loss 
