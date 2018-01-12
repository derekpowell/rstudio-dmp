####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y --no-install-recommends install \
    libnlopt-dev \
    r-cran-rgl \
&& install2.r --error \
    --deps TRUE \
    lme4 \
    car \
    AID \
    psych \
    lavaan \
    bnlearn \
    BDgraph \
    brms \
    fitdistrplus \
    ggmcmc \
    semPlot \
    simsem \
    snow \
&& R --no-restore --no-save -e \
'devtools::install_github("hadley/multidplyr")'
