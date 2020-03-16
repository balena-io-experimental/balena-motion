#!/bin/bash

sed -i "s/EXPOSE_PORT/${EXPOSE_PORT}/g" /etc/motion/motion.conf
sed -i "s/CAMERA_NAME/${CAMERA_NAME}/g" /etc/motion/motion.conf

/usr/bin/motion -c /etc/motion/motion.conf
