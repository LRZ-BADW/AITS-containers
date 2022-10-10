# Hands-on 1: First steps with Docker

Feel free to experiment with these commands:

## Run hello world

- `docker -v`: Version, install is OK
- `docker ps`: No running container
- `docker image ls`: No image on the system
- `docker pull hello-world`: Pull from hub
- `docker image ls`: hello-world is available locally now
- `docker run hello-world`: Understand what it is saying?

## Run alpine interactively

- `docker run alpine`: Nothing
- `docker ps`: Nothing
- `docker ps -a`: Container exited after executing /bin/sh
- `whoami`: Host
- `hostname`: Host
- `uname -a`: Host
- `docker run --help`
- `docker run -it --hostname "alpine-container" alpine`: Now something! Interactively, /bin/sh is executed
- `whoami`: I'm in the container
- `hostname`: I'm in the container
- `uname -a`: The container is on the host
- `ps aux`: No OS is running / PID 1 is not init: but the bash!
- Execute commands in the containers and explore fs
- Show volatility: `echo "Servus! Bonjour! ¡Hola! Hello!" > hello.txt`
- exit / ctrl-D / ctrl-P ctrl-Q

## Going further in alpine

- Try common UN\*X commands in your shell: ls, cd, pwd... Are some of them missing? Is it a bug or feature of containers? Of Alpine?
- Going further: Use the apk package manager to find and install addition packages. How about man, python, htop, neofetch for example?
- Explore the filesystem around you. Can you see files from the host system?
- Create a file, for example via : echo "Servus! Bonjour! ¡Hola! Hello!" > hello.txt. Exit the container and start it again. Is the file still here?
- Would you dare executing rm -rf /\* in the container. What happens? Exit the container and start it again? What happened?
