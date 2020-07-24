for MODEL in r26 r29
do
    for EPOCH in 010 020 030 040
    do
        echo -e "\nMODEL $MODEL, EPOCH $EPOCH\n"
        python test.py \
        --data_file ~/Storage/Datasets/cifar10/hdf5/cifar10.hdf5 \
        --group_tr train \
        --group_tt test \
        --test_config config_test/test_train_nodaug.yml \
        --model log/cifar10/tripletcnn/noreg/bn/inv/$MODEL/model_*_$EPOCH \
        --output_dir -1 \
        --output_basename testscores/testscore_ep$EPOCH 
    done
done