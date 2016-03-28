#!/bin/sh

DIR=$1

cd $DIR

pwd
echo "AUTHOR='$AUTHOR'"

sed -e "s/Docker/$AUTHOR/" Hello_docker.html > index.html

nginx -g 'daemon off;'

