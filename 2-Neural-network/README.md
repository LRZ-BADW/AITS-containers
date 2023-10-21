# Hands-on 2: Make an ANN dream in a container

## Question

In the Question, we provide a jupyter notebook. You need to build a Docker image that will allow us to run it. The entrypoint is provided for simplicity.

1. Install Python python3-dev python3-pip and the required dependencies
	- Tensorflow
	- Matplotlib
	- Jupyter
1. You will need to copy the required code and config file into the image. 
1. You will map a volume to save the output of the dreams.
1. You will expose the port 8888 to access the interface to execute the code from the jupyter notebook

## Solution

In the solution, we provide a Dockerfile and a Makefile to help you build the image and run the container.