#!/bin/bash

sed -ie "s/EXPOSE_PORT/${EXPOSE_PORT}/g" /etc/motion/motion.conf

/usr/bin/motion
