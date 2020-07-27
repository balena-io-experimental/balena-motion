#!/bin/bash

envsubst < motion-template.conf > motion.conf

cp motion.conf /etc/motion/motion.conf

/usr/bin/motion -c motion.conf
