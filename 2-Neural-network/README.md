# Hands-on 2: Make an ANN dream in a container

You will build a Dockerfile form scratch that will let you customize an Ubuntu base image 

1. Install Python python3-dev python3-pip and the required dependencies
	- Tensorflow
	- Matplotlib
	- Jupyter
1. You will need to copy the required code and config file into the image. 
1. You will map a volume to save the output of the dreams.
1. You will expose the port 8888 to access the interface to execute the code from the jupyter notebook
