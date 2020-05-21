#!/bin/sh

# This sets up a docker container for running kiwix server to host local wikipedia.
# You need to make sure to keep the .sh file in same location as .zim file.
# With guidance from from A. Plante
 
ZIM=$1


docker run -d \
	--restart=always \
	--name=KIWIX_SERVER \
	-v $(pwd):/data \
	-p 8080:80 \
	kiwix/kiwix-serve $ZIM


#FUTURE: add logic to check for .zim file before 


