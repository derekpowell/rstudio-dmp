####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y --no-install-recommends install \
    libnlopt-dev \
    r-cran-rgl \
    r-cran-boot \
    libgtk2.0-dev \
    libcairo2-dev \ 
    xvfb \ 
    xauth \
    xfonts-base \
    libxt-dev \
    libjpeg-dev \
&& R --no-restore --no-save -e 'source("https://bioconductor.org/biocLite.R");biocLite(c("graph","Rgraphviz","RBGL"))' \
&& install2.r --error \
    --deps TRUE \
    lme4 \
    car \
    psych \
    lavaan \
    bnlearn \
    BDgraph \
    fitdistrplus \
    semPlot \
    simsem \
    snow \
    brms \
    ggmcmc \
&& R --no-restore --no-save -e \
'devtools::install_github("hadley/multidplyr")'
