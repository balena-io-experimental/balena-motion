#!/bin/bash

envsubst < motion-template.conf > motion.conf

motion -c motion.conf