# docker_python

This Dockerfile provides you a full Python 2/3 environment.
Including pip, pip2, pip3, pyhton-tk.

## Building the container

First of all, you must download this repo and build the Docker image
```
cd $HOME
git clone https://git.pixhub.fr/pixhub/docker_python
docker build -y some-name docker_python
```

## Running the container with interactive Display

With TKinter and Turtle, you can build Apps in Python with interactive Window.
In my case, i got a folder containing all my Python Scripts which I mount inside the container.
If you want the container intercating with your Host's desktop just copy/paste the following :
```
docker run --rm -ti -v /tmp/.X11-unix:/tmp/.X11-unix \
                    -v /your/python/files/path:/app \
                    -e DISPLAY=$DISPLAY \
                    -u python some-name /bin/bash
```

### Want to Test ?

Now you're inside the container type the following :
```
python3
>>> from turtle import *
>>> forward(200)
```

As you can see, a window pop on your screen with what you typed just before.

Enjoy !

Best regards,
pixhub.