# balena-motion
Live stream your device's webcam using [Motion](https://motion-project.github.io/motion_config.html).

## Getting started
The default deployment uses Debian.

```
/balena-motion/
├── Dockerfile.template
├── motion-template.conf
├── README.md
├── start.sh
```
This application uses a standard USB webcam. Some older versions don't play nice, but most do, and are successfully found by the system on /dev/video0.

All the motion directives in _motion-template.conf_ can be modified, including the port on which your feed is available. When using ```Deploy with balena``` all the variables are pre-configured for you. You can change these from the balenaCloud dashboard. Those variables include ```DAEMON``` which is set to ```off``` so the container service starts and remains running. If ```daemon``` is not set to off your container will start and quit.

In addition to setting the EXPOSE_PORT variable, also add these to your balenaCloud Device Configuration Custom  Configuration Variables (or fleetwide). Add these variables before adding a device for faster launch.

## Deploy with balena
[![](https://www.balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy)


## Alnerate manual balena build and deploy
```
$ git clone git@github.com:jtonello/balena-motion.git
$ balena push my-motion-app
```

To view the live stream, visit http://<nolink>device-ip-address:your-port.
