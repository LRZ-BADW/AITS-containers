---
title: Hands-on containers material
author: Florent Dufour
date: \today
---

# Hands-on 1: Your first steps with containers

**Intent**: Understand the basics of images and containers

**Tasks**:

- Try some Docker commands (`docker -v`, `dcoker ps`, `docker image ls`)
- Run the hello-world image
- Run a container interactively (Alpine)
- Explore the file system within the container, create files, compare to the host file system
- Show volatility of containers (create files and restrart container, `rm -rf /*`)

# Hands-on 2: Design your own image and container

**Intent**: Use the theory we've seen and create an image that will be a development environment for Machine Learning with Jupyter lab and tensorflow installed and configured. Create a volume that will host files for training a model.

**Task**:

- Create the Dockerfile
- Map the volume for the dataset
- Expose the proper port
- Build the image and run the container
- Access the web UI and train the model


# Hands-on 3: Containers and HPC with Charliecloud

tbd.

# Hands-on 4: Enable biomedical reproducible workflow with contain- ers and Nextflow

**Intent**: Abstract containers and use nextflow for RNAseq analysis with Salomon and multiQC.

**Task**:

* Launch the nexflow script
* Give a quick look to the logs
* Download the HTML report
* Read the results
