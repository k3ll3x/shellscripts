#!/bin/bash
echo "Creating temp image..."
dmg2img $1 tmp.img
echo "mounting image in /mnt..."
sudo mount -o loop -t hfsplus tmp.img /mnt
