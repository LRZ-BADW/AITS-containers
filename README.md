---
title: Hands-on containers material
author: Florent Dufour
date: \today
---

- [Hands-on 1: Your first steps with containers](#hands-on-1-your-first-steps-with-containers)
  - [Aim](#aim)
  - [Tasks](#tasks)
  - [Notes for instructor](#notes-for-instructor)
- [Hands-on 2: Design your own image and container](#hands-on-2-design-your-own-image-and-container)
  - [Aim](#aim-1)
  - [Tasks](#tasks-1)
  - [Notes for instructor](#notes-for-instructor-1)
- [Hands-on 3: Containers and HPC with Charliecloud](#hands-on-3-containers-and-hpc-with-charliecloud)
  - [Aim](#aim-2)
  - [Tasks](#tasks-2)
  - [Note for instructor](#note-for-instructor)
- [Hands-on 4: Enable biomedical reproducible workflow with contain- ers and Nextflow](#hands-on-4-enable-biomedical-reproducible-workflow-with-contain--ers-and-nextflow)
  - [Aim](#aim-3)
  - [Tasks](#tasks-3)
  - [Note for instructor](#note-for-instructor-1)

# Hands-on 1: Your first steps with containers

## Aim 

Understand the basics of images and containers

## Tasks

- Try some Docker commands (`docker -v`, `dcoker ps`, `docker image ls`)
- Run the hello-world image
- Run a container interactively (Alpine)
- Explore the file system within the container, create files, compare to the host file system
- Show volatility of containers (create files and restrart container, `rm -rf /*`)

## Notes for instructor

- See [here](./1-First-steps/README.md)

# Hands-on 2: Design your own image and container

## Aim

Use the theory we've seen and create an image that will be a development environment for Machine Learning with Jupyter lab and tensorflow installed and configured. We will make an ANN dream in a container using this [notebook](https://github.com/tensorflow/docs/blob/master/site/en/tutorials/generative/deepdream.ipynb/).

## Tasks

- Create the Dockerfile
- Map the volume for the dataset
- Expose the proper port
- Build the image and run the container
- Access the web UI and run the python code

## Notes for instructor

- To unlock solution, password is: `bmw-m5-e34`
- Additional images available
  - https://doku.lrz.de/download/attachments/74383481/mignon.jpeg

# Hands-on 3: Containers and HPC with Charliecloud

## Aim

Make use of Charliecloud commands and compare Docker and Charliecloud images.

## Tasks

- Pull an imahge from the hub
- Export it as a docker tarball and expand it
- Same with charliecloud
- Compare the content (`du -sh`, `tree`, `diff`...)

## Note for instructor

- To unlock solution, password is: `datsun-240z`
- Do not spend too much time on it

# Hands-on 4: Enable biomedical reproducible workflow with contain- ers and Nextflow

## Aim 

Abstract containers and use nextflow for RNA-seq analysis with Salmon and multiQC.

## Tasks

- Launch the nexflow script
- Give a quick look to the logs
- Download the HTML report
- Read the results

## Note for instructor

- To unlock solution, password is: `alpine-berlinette`