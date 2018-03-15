#!/usr/bin/with-contenv bash

GIT_USER=${GIT_USER:=none}
GIT_EMAIL=${GIT_EMAIL:=none}

if [ "$GIT_USER" != none ]; then
	git config --global user.name $GIT_USER
fi

if [ "$GIT_EMAIL" != none ]; then
	git config --global user.email $GIT_EMAIL
fi
