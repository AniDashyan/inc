i#!/bin/bash
if [ ! -d "/home/${USER}/data" ]; then
        mkdir ~/data
fi

mkdir -p ~/data/mariadb
mkdir -p ~/data/wordpress
