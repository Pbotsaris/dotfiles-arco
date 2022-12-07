## Installation (Arch)

Install using pacman

    $> pacman -S docker

Start the docker daemon with systemd 

    $> sudo systemctl start docker.service

Now enable the service so it persists through reboots


    $> sudo systemctl enable docker.service


Docker command will require `sudo` everytime because as it is owned by a `docker` user group which `$USER` is not part of. 
Let's add `$USER` to the `docker` user group so sudo is not required at every command

    $> sudo usermod -aG docker $USER 


Verify that `$USER` was added Successfully

    $> cat /etc/group | grep docker
       docker:x:958:pedro


## Basic commands

List containers

     $> docker ps


List images

     $> docker images


Pull images

     $> docker pull <image>:<tag>

So to pull a docker images with postgres 15 on alpine linux

     $> docker pull postgres:15-alpine

Remove container

     $> docker rm <container_id>

### Spinning a container

     $> docker run --name <container_name> -p <host_port>:<container_port> -e <env_var> -d <image>:<tag>

- The `-d` flag tells docker to run container in the background.
- The `-e` let us specify and pass environment variable to the container. We must prefer `-e` before every key pair.
- The `-p` is used for port mapping between host OS and container.

#### Example

So for our postgres example the command would look something like this
      
     $> docker run --name postgres15 -p 6432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -d postgres:15.1-alpine


Note that we mapped postgres port(`5432`) within the container to another port (`6432`) in the host OS. This is because we could be spining a postgres instance in the host computer 
so the port `5432` may be already in use.

Check running container

     $> docker ps
        CONTAINER ID   IMAGE                  COMMAND                  CREATED          STATUS          PORTS                                       NAMES
        32e3deb47a7b   postgres:15.1-alpine   "docker-entrypoint.s…"   39 seconds ago   Up 37 seconds   0.0.0.0:6432->5432/tcp, :::6432->5432/tcp   postgres15

      
### Exec 

        $> docker exec -it <container_name> <command>[args...]

`it` for iteractive

Accessing sh shell prompt

        $> docker exect -it postgres15 /bin/sh

Accessing the bp database via `psql` using `docker exec`

        $> docker exec -it postgres15 psql -U bp


### Logs

      docker logs <container_name>

