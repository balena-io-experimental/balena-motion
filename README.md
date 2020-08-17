# balena-motion
Live stream your device's webcam using [Motion](https://motion-project.github.io/motion_config.html) to create your own motion-detecting cat cam like my TuckerCam.

## Getting started
The default deployment uses Debian.

```
/balena-motion/
├── Dockerfile.template
├── motion-template.conf
├── README.md
├── start.sh
```
This application uses a standard USB webcam. Some older versions don't play nice, but most do, and are successfully found by the system on ```/dev/video0```.

All the motion directives in _motion-template.conf_ can be modified, including the port on which your feed is available. When using ```Deploy with balena``` all the key variables are pre-configured as shell variables for you, but can be changed during set-up or from the balenaCloud dashboard device variables. Those variables include ```DAEMON``` which is set to ```off``` so the container service starts and remains running. If ```daemon``` is not set to off your container will start and quit.

In addition to setting the ```EXPOSE_PORT``` variable, the ```balena.yml``` sets the streaming port (8081 by default), output resolution, framerate, remote access, video device, stream quality, video palette and other variables. To set additional ```motion``` configuration settings, add shell variables to ```motion-template.conf``` and either add the key/value pairs to ```balena.yml``` or manually via the balenaCloud dashboard. Add these variables before adding a device for faster launch, particularly on the Raspberry Pi Zero.

## Deploy with balena
[![](https://www.balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy)


## Alnerate manual balena build and deploy
```
$ git clone git@github.com:balenalabs-incubator/balena-motion.git
$ balena push my-motion-app
```

To view the live stream, visit http://<nolink>device-ip-address:your-port.
