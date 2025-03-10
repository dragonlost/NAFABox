# Installation tutorial to enable graphical acceleration on Tinkerboard:

This manipulation is quite experimental but allows a clear acceleration of the graphical interface. It is useless if you do not use the Tinkerboard desk.

__Caution:__ Stellarium will not work anymore because the openGL emulation is not in a high enough version (OpenGL 3.1). It is possible to make it work if stellarium is compiled for openGL

## Download the pack:

Go to this address:
https://forum.armbian.com/topic/7262-rk3288-media-script-tinkerboard/

Download "2.0 for bionic desktop" version

## Setting up:

Go to the download folder then right click and finally "open a terminal here".

Start the following commands:

`tar xvf media-rk3288_*.tar.xz`   
`cd media-script`   
`sudo apt remove -y libwayland-dev mesa-common-dev`   

## Installation:

Start the following command:    
`./media-rk3288.sh`

![GPU](https://github.com/dragonlost/NAFABox/raw/master/doc/gpu_accel_1.png)

![GPU](https://github.com/dragonlost/NAFABox/raw/master/doc/gpu_accel_2.png)     
When installing checked well opencl and opengl

![GPU](https://github.com/dragonlost/NAFABox/raw/master/doc/gpu_accel_3.png)       
Install the experimental version for more performance.

## System addition:

In order not to lose the display of icons or some other problem please disable the composer.

To do this, open __MATE Tweak__ then go to the tab window and finally disable the composer by selecting __Marco (without composer)__ in the Window Manager.

![GPU](https://github.com/dragonlost/NAFABox/raw/master/doc/gpu_accel_4.png)
