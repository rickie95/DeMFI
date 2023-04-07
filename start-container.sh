#/bin/bash

docker run --rm -it --name demfinet \
    --mount type=bind,source="$(pwd)"/input,target=/DeMFI/input \
    --mount type=bind,source="$(pwd)"/output,target=/DeMFI/output \
    --mount type=bind,source="$(pwd)"/checkpoints,target=/DeMFI/checkpoints \
    --runtime=nvidia --gpus all \
    demfi