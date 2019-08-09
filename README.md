# So Cat

----
## What is Socat
> A simple gather ratings app ... 

### Chatter Highlights:
* docker
* docker-compose
* db is postgres

## Prereq's
I use Fedora - older version because it works ...
| Plugin | README |
| ------ | ------ |
| docker (i use fedora) | https://docs.docker.com/install/linux/docker-ce/fedora/|
| docker-compose | https://developer.fedoraproject.org/tools/docker/compose.html|

##  CHATTER
----
### Handy docker commands:
    docker rmi --force $(docker images -a -q)
    docker images
    docker ps
### Handy docker-compose commands:
    docker-compose build
    docker-compose up -d
    docker-compose run --rm magpie_web bash
    docker-compose down
----
## JUST-RUN-IT

### 1. Sanity check that you got the tools (sample below)

    [me@localhost socat]$ docker images
	REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
    [me@localhost socat]$ docker ps
	CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
    [me@localhost socat]$ docker volume ls
	DRIVER              VOLUME NAME

### 2. Build (one time deal)

    [me@localhost socat]$  cd ./socat
    [me@localhost socat]$ docker-compose build

### 3. Run 
    [me@localhost socat]$ docker-compose up -d

### 4. Sanity Check
    [me@localhost socat]$ docker volume ls
    
### 5. GOTTA INIT THE DB ONE TIME ...

### 6. GOTO Web browser and open and cross your fingers:
    http://0.0.0.0:5000
    
### 7. Shut things down - DO NOT FORGET TO DO THIS
    [me@localhost socat]$ docker-compose down
    
### 8. Peek at data
     [me@localhost socat]$ docker volume ls

    # if you want to DELETE the data 
    # docker volume prune
        
### 9. Restart
    [me@localhost socat]$docker-compose up -d
    ... goto browser if you did not prune, data persists
    
----
## JUST-DEV-IT
