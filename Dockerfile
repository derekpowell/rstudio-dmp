####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

RUN R --no-restore --no-save -e \
'install.packages(c("car", "AID", "psych", "lavaan","bnlearn","BDgraph","brms"), repos="http://cran.us.r-project.org")'
