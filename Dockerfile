####### Dockerfile #######
FROM rocker/tidyverse:3.4.3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libnlopt-dev \
    libglu1-mesa-dev \
    libgtk2.0-dev \
    libcairo2-dev \ 
    libxt-dev \
    libjpeg-dev \
    libgsl0-dev \
    xvfb \ 
    xauth \
    xfonts-base \
    r-cran-boot \
    r-cran-numderiv \
    r-cran-snow \
&& R --no-restore --no-save -e 'source("https://bioconductor.org/biocLite.R");biocLite(c("graph","Rgraphviz","RBGL"))'\
&& install2.r --error \
    --deps TRUE \
    lme4 \
    car \
    psych \
    lavaan \
    fitdistrplus \
    semPlot \
    simsem \
    brms #\
#     ggmcmc \
#     bnlearn \
#     BDgraph \
# && R --no-restore --no-save -e 'devtools::install_github("hadley/multidplyr")'
