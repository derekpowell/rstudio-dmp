####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

RUN apt-get -y --no-install-recommends install \
    libnlopt-dev \
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
