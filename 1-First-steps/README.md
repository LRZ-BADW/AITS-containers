# Hands-on 1: First steps with Docker

Feel free to experiment with these commands:

- docker -v
- docker ps
- docker image ls
- docker pull hello-world
- docker image ls
- docker run hello-world
- docker run alpine
- docker ps
- docker ps -a
- whoami
- hostname
- uname -a
- docker run -it --rm --hostname "bonjour" --name --"my container" alpine
- whoami
- hostname
- uname -a
- ps aux
- Execute commands in the containers and explore
- exit / ctrl-D / ctrl-P ctrl-Q

> Try common UN*X commands in your shell: ls, cd, pwd... Are some of them missing? Is it a bug or feature of containers? Of Alpine?
> > Going further: Use the apk package manager to find and install addition packages. How about man, python, htop, neofetch for example?

> Explore the filesystem around you. Can you see files from the host system?
> Create a file, for example via : echo "Servus! Bonjour! ¡Hola! Hello!" > hello.txt. Exit the container and start it again. Is the file still here?
> Would you dare executing rm -rf /* in the container. What happens? Exit the container and start it again? What happened?
> > Hint: Remember that containers are ephemeral and disposable. Feel free to mess and break as many things as you can.