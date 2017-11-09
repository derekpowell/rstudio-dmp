####### Dockerfile #######
FROM rocker/tidyverse:3.3.3

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
build-essential \
&& . /etc/environment \
&& install2.r --error \
# --repos 'http://www.bioconductor.org/packages/release/bioc' \
--repos $MRAN \
--deps TRUE \
snow brms lavaan simsem car psych viridis bnlearn BDgraph ggraph tidygraph lavaan modelr corrplot
