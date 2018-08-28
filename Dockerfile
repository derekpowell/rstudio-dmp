####### Dockerfile #######
FROM rocker/verse:3.4.3

ENV DEBIAN_FRONTEND noninteractive

COPY set_theme.sh /etc/cont-init.d/theme

COPY git_config.sh /etc/cont-init.d/gitconfig

COPY rstudio_bindings.json /etc/rstudio_bindings.json

COPY set_keybindings.sh /etc/cont-init.d/setkeys

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxt-dev \
    libudunits2-dev \  
    jags \
&& R --no-restore --no-save -e \    
    'BiocInstaller::biocLite(c("graph","Rgraphviz","RBGL"))' \
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
    styler \
    tidygraph \
    viridis \
	BiDAG \
&& installGithub.r \
    hadley/multidplyr@0085ded4048d7fbe5079616c40640dbf5982faf2 \
    mjskay/tidybayes@1432704feef258e068fb4c8304089f2d8f67cf7f \
    rmcelreath/rethinking@1.59 \
    mjskay/tidybayes.rethinking@6859cc524c9317741d0e6e6d44f6711c4633da83 \
    thomasp85/tidygraph@de00d4d1bbf9a5e00746727125e2abd801fb7ddf

