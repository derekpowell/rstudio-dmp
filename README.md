# rstudio-dmp

This is a Docker image for my custom rstudio environment. Currently wraps together all packages from rstudio-init, rstudio-bayesreg and rstudio-graphmod, and some others. Versions are tagged by date, e.g. "20180317"

## rstudio-init

This draws on the most-recently versioned rocker/verse image, currently `rocker/verse:3.4.3`. This is a base image where I add scripts to the image `\init`, primarily to add customizations and improve workflow.

Takes the extra arguments:

* Set the theme with `-e THEME="Solarized Dark"` or any other RStudio theme
* Configure git with `GIT_USER` and `GIT_EMAIL` environment variables **BROKEN**

NOTE: git config doesn't work, possibly because it's being run as root, possibly another issue. Solution may be to bring git credentials in over ssh, rather than doing them in the container.

## rstudio-bayesreg

This image adds a collection of packages for Bayesian regression and multilevel modeling. The basis for most of these tools is the probabilistic programming language [Stan](http://mc-stan.org/).

It features:

* Bayesian multi-level regression: with [brms](https://github.com/paul-buerkner/brms) and [rstanarm](http://mc-stan.org/users/interfaces/rstanarm)
* Bayesian hypothesis testing: with [BayesFactor](http://bayesfactorpcl.r-forge.r-project.org/)
* Distributional modeling in Stan with the [rethinking](https://github.com/rmcelreath/rethinking) package
* Bootstrapping tools: [boot](https://cran.r-project.org/web/packages/boot/boot.pdf) and [bayesboot](https://github.com/rasmusab/bayesboot)
* Modeling and plotting tools: [broom](https://github.com/tidyverse/broom), [tidybayes](https://github.com/mjskay/tidybayes), and [ggmcmc](https://github.com/xfim/ggmcmc)
* Non-bayesian regression tools: [lme4](https://github.com/lme4/lme4) and [rms](https://www.r-bloggers.com/introduction-to-the-rms-package/)
* Misc: fitdistrplus, viridis, ggthemes

## rstudio-graphmod

Adds a collection of packages for graphical modeling.

It features:

* Structure learning: graph, bnlearn, bnstruct, BDgraph (undirected),
* Bayesian Network Inference: gRain, gRim, HydeNet (MCMC)
* Structural Equation Modeling: lavaan, blavaan, simsem
* Plotting tools: tidygraph, ggraph, ggnetwork, geomnet, ggrepel, semPlot
* Misc: multidplyr

## Other additions

Also added the `styler` package for code styling.

## Notes

**Docker Hub Automated builds are failing as of 2018-03-17. Images hosted there were built locally by me.**
