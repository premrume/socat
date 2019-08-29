# So Cat

----
## What is Southern Cat
> A simple gather ratings app ... 

### Southern Cat Highlights:
* docker
* docker-compose
* db is postgres

## Prereq's
I use Fedora - older version because it works ...
| Plugin | README |
| ------ | ------ |
| docker (i use fedora) | https://docs.docker.com/install/linux/docker-ce/fedora/|
| docker-compose | https://developer.fedoraproject.org/tools/docker/compose.html|

----
## DO THIS!!!!

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

## Now make ...

### Install:  Run this once to make to standup mount points ... 
```sh
sudo make stand
```

### Build, run ...
```sh
make crawl walk run
```

## IF things went okay ...

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
