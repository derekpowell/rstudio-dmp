####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

RUN install2.r --error \
--repos 'http://www.bioconductor.org/packages/release/bioc' \
--repos $MRAN \
--deps TRUE \
car
