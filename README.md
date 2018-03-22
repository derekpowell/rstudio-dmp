# rstudio-dmp

This is a Docker image for my custom rstudio environment. Currently wraps together all packages from rstudio-init, rstudio-bayesreg and rstudio-graphmod, and some others. Versions are tagged by date, e.g. "20180317". This image may be somewhat ahead of these components, as I am now using this as my primary image.

## rstudio-init

This draws on the most-recently versioned rocker/verse image, currently `rocker/verse:3.4.3`. This is a base image where I add scripts to the image `\init`, primarily to add customizations and improve workflow.

Takes the extra arguments:

* Set the theme with `-e THEME="Solarized Dark"` or any other RStudio theme
* Configure git with `GIT_USER` and `GIT_EMAIL` environment variables

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

* Added the `styler` package for automated code styling. 
* Added custom keyboard shortcuts with the file `rstudio_bindings.json`

## Notes

**Docker Hub Automated builds are still failing as of 2018-03-22. Images hosted there were built locally by me.**
