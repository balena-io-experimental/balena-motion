# balena-motion
Live stream your device's webcam using motion.

## Getting started
The default deployment uses Alpine, a small OS that's ideal for running this application on a Raspberry Pi Zero or any other balenaCloud-supported device. If you'd rather use Debian, make _Dockerfile.template_stretch_ your Dockerfile.

All the motion directives in _motion.conf_ can be modified, including the port on which your feed is available. The Dockerfile uses a balenaCloud device variable, which is added to the configuration during deployment. That same port is exposed during the build. Also be sure to set __daemon off__, otherwise your container will start and quit.

In addition to setting the EXPOSE_PORT variable, also add these to Device Environment Variables (or fleetwide):
    | Key                                  | Value
    |--------------------------------------|----------
    |**`BALENA_HOST_CONFIG_gpu_mem_256`**  | **`192`**
    |**`BALENA_HOST_CONFIG_gpu_mem_512`**  | **`256`**
    |**`BALENA_HOST_CONFIG_gpu_mem_1024`** | **`448`**

This application uses a standard USB webcam. Some older versions don't play nice, but most do, and are successfully found by the system on /dev/video0.
```
/balena-motion/
├── Dockerfile.template
├── Dockerfile.template_stretch
├── motion.conf
```

## Build and deploy
```
$ git clone git@github.com:jtonello/balena-motion.git
$ balena push my-motion-app
```

To view the live stream, visit http://<nolink>device-ip-address:your-port.
