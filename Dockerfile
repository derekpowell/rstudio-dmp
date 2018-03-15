####### Dockerfile #######
FROM rocker/verse:3.4.3

ENV DEBIAN_FRONTEND noninteractive

COPY set_theme.sh /etc/cont-init.d/theme

COPY git_config.sh /etc/cont-init.d/gitconfig

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxt-dev \
    libudunits2-dev \  
    jags \
&& install2.r --error \
    bayesboot \ 
    BayesFactor \
    BDgraph \
    blavaan \
    bnlearn \
    bnstruct \
    boot \
    brms \
    broom \
    fitdistrplus \
    fitdistrplus \
    geomnet \
    ggmcmc \
    ggnetwork \
    ggraph \
    ggrepel \
    gRain \
    gRim \
    HydeNet \
    lavaan \
    lme4 \
    rms \
    rstanarm \
    semPlot \
    simsem \
    tidygraph \
    viridis \
&& installGithub.r \
    hadley/multidplyr@0085ded4048d7fbe5079616c40640dbf5982faf2
    mjskay/tidybayes@1432704feef258e068fb4c8304089f2d8f67cf7f \
    rmcelreath/rethinking@1.59 \

