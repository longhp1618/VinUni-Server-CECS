#!/bin/bash

# enter username
read -p "Enter username (required): " username

echo "[RES] => using $username"

read -p "Enter port (required): " port

echo "[RES] => using $port"

docker cp $username:/home/ubuntu/miniconda3 /home/vinuni/VinUniServer/backup
docker cp $username:/home/ubuntu/.ssh/authorized_keys /home/vinuni/VinUniServer/backup

s="2,3"

cpu="30-62"

#reomve old contianer and  create a new limited container
docker stop $username
docker rm $username
docker run --init --restart=always --name $username \
    --memory 128g --shm-size 64g \
    --cpuset-cpus="31-62" --gpus "\"device=$s\"" \
    -v ~/vinuni/user/$username:/home/ubuntu/$username \
    -v ~/vinuni/shared:/home/ubuntu/shared \
    -v ~/vinuni/data:/home/ubuntu/data:ro \
    -p $port:22 -itd ubuntu_cecs:20.04

# docker exec -it $username rm -rf $username:/home/ubuntu/miniconda3
docker cp  /home/vinuni/VinUniServer/backup/authorized_keys $username:/home/ubuntu/.ssh/authorized_keys
docker cp  /home/vinuni/VinUniServer/backup/miniconda3 $username:/home/ubuntu
rm -rf /home/vinuni/VinUniServer/backup/authorized_keys
rm -rf /home/vinuni/VinUniServer/backup/miniconda3
