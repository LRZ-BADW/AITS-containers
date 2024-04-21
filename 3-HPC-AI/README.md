# Hands-on 3: Containers and HPC

## Question

In the question, we provide a Dockerfile that will run whisper.cpp in a Docker container. You need to:

1. Build the Docker image from the Dockerfile
1. Convert the image to enroot
1. Create an enroot container
1. Start the enroot container
1. You can convert speech to text

## Solution

In the solution, we provide a Makefile that includes all this steps and takes you to a running container that contains audio files to transcribe. Use `make solution` to make all the steps.