####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

RUN install2.r --error \
    --deps TRUE \
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
    simsem
    
# RUN R --no-restore --no-save -e \
#'install.packages(c("car", "AID", "psych", "lavaan","bnlearn","BDgraph","brms","corrplot","fitdistrplus","ggmcmc","ggridges","lme4","semPlot","snow"), repos="http://cran.us.r-project.org")'

# && R --no-restore --no-save -e \
# 'devtools::install_github("hadley/multidplyr")'
# lme4 may be giving trouble due to nlopt package problem, a url changed apparently
