####### Dockerfile #######
FROM rocker/tidyverse:latest

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
build-essential \
&& . /etc/environment \
&& install2.r --error \
--repos 'http://www.bioconductor.org/packages/release/bioc' \
--repos $MRAN \
--deps TRUE \
brms
