# SSH-dockerfile

This Dockerfile creates an ssh service inside a docker container
Image linux = Debian:8 (jessie)


![Docker](https://github.com/s1ntaxe770r/SSH-dockerfile/workflows/Docker/badge.svg)

* default user/password = demo

i also wrote about why you'd want to do this here [here](https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i)


## Building the image

` docker build -t debian8 . ` 

## Running the image in background ('-d')

` docker run -d -p 22:22 debian8 `

## Display the container name 
`docker ps`
```
CONTAINER ID   IMAGE     ...   PORTS                NAMES
10ea1c27acce   debian8   ...   0.0.0.0:22->22/tcp   magical_ganguly
```
## Stop the container 'magical_ganguly'
``docker stop magical_ganguly``

## Re-start the container
``docker start magical_ganguly``

## Pull the image from docker hub

`docker pull ghcr.io/s1ntaxe770r/image:latest`

