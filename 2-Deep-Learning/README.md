# Hands-on 2: Make an ANN dream in a container

## Question

In the Question, we provide a jupyter notebook. You need to build a container that will allow us to run it. The entrypoint is provided for simplicity.

Hints:

1. Install the dependecies: python3-dev python3-pip with `apt`
1. Install the python dependencies with `pip`:
	- Tensorflow
	- Matplotlib
	- Jupyter
1. (You will map a volume to save the output of the dreams.)
1. You will expose the port 8888 to access the interface to execute the code from the jupyter notebook

## Solution

In the solution, we provide a Dockerfile and a Makefile to help you build the image and run the container. Use `make solution` to make all the steps.