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
## DO THIS

### setup local share folder
If you don't do this, NOTHING will work ... just sayin, don't skip it Tim.
```
# Folder:  /var/landing matches the variable in the ./Makefile
#          SOCAT_ROOT if you use a different folder, update ./Makefile
sudo mkdir /var/landing
# Priv:  Set priv to /var/landing so you can use it.
#        This is a bit drastic, works for dev
sudo 777 /var/landing
```

## AND THIS

### Run this once to make to install basics
```sh
sudo make stand
```

### Run this once to start everything
```sh
make
```


### Postgres/pgadmin
0.0.0.0:80 (user@domain.com/socat)
Connection: 
	host: postgres 
        username: postgres
	password: socat

### Django
0.0.0.0:8000
0.0.0.0:8000/admin (admin/socat)

## MAYBE THIS

### Only run this if you have nothing to loose in your environmnet!
```sh
# This is a severe, very severe cleaning of docker
sudo make deepclean
```
