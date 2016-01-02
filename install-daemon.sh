#!/bin/sh

VERSION=1.0.0.Alpha2

if [ -d ~/.arquillian ]
then
	echo "Arquillian Directory Exists"
	if [ -f ~/.arquillian/arquillian-daemon.jar ]
	then
		echo "Arquillian Daemon Already Downloaded"
	else
		echo "Downloading Arquillian Daemon $VERSION"
		curl http://repo1.maven.org/maven2/org/jboss/arquillian/daemon/arquillian-daemon-main/$VERSION/arquillian-daemon-main-$VERSION.jar -o ~/.arquillian/arquilllian-daemon.jar	
	fi
else
	mkdir ~/.arquillian
	echo "Downloading Arquillian Daemon $VERSION"
        curl http://repo1.maven.org/maven2/org/jboss/arquillian/daemon/arquillian-daemon-main/$VERSION/arquillian-daemon-main-$VERSION.jar -o ~/.arquillian/arquilllian-daemon.jar
fi
