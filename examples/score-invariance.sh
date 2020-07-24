for MODEL in r26 r29
do
    echo -e "\nCOMPUTING INVARIANCE FOR MODEL $MODEL\n"
    for EPOCH in 010 020 030 040
    do
        echo -e "\nMODEL $MODEL, EPOCH $EPOCH\n"
        python invariance_numpy.py \
        --data_file ~/Storage/Datasets/cifar10/hdf5/cifar10.hdf5 \
        --group test \
        --daug_params heavier.yml \
        --model log/cifar10/tripletcnn/noreg/bn/inv/$MODEL/model_*_$EPOCH \
        --output_mse_matrix_hdf5 mse_matrix_ep$EPOCH \
        --output_pickle invscores_ep$EPOCH \
        --layer_regex flatten
    done
done