#!/bin/sh

IMAGE=mjbright/rpi-nginx

AUTHOR="My_Name"
#AUTHOR="My\ Name"
#AUTHOR="My Name"

build() {
    echo "docker build -t $IMAGE ."
    docker build -t $IMAGE .
}

run() {
   #command="docker run --rm -it -e AUTHOR="${AUTHOR}" -p 80:80 $IMAGE"
   #set -- docker run --rm -it -e AUTHOR=\"${AUTHOR}\" -p 80:80 $IMAGE
   set -- docker run --rm -it -e AUTHOR="${AUTHOR}" -p 80:80 $IMAGE
   #echo "$command"
   #$command
   echo "$*"
   #"$*"
   #$*
   ${@}
}

build
run



