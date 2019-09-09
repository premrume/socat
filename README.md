# So Cat

----
## What is Southern Cat
> A simple ratings app ...  
> Development work in progress...

## PREREQUISITE

### TOOLS:
* docker
* docker-compose
* git

### Docker notes
| Plugin | README |
| ------ | ------ |
| docker (i use fedora) | https://docs.docker.com/install/linux/docker-ce/fedora/|
| docker-compose | https://developer.fedoraproject.org/tools/docker/compose.html|

## SETUP VOLUME
### LOCAL
If you don't do this, NOTHING will work ... just sayin, don't skip it Tim.
```
# See ./Makefile SOCAT_ROOT=/var/landing
sudo mkdir /var/landing
# Drastic, works for dev
sudo 777 /var/landing
```

## INSTALL,BUILD,RUN
```sh
make
```
## IF things went okay ...

### Postgres/pgadmin:
## browser: http://0.0.0.0:80 
>user@domain.com
>socat
## Postgres connection:
>host: postgres 
>username: postgres
>password: socat

### Web Django
## browser for user http://0.0.0.0:8000
## browser for admin http://0.0.0.0:8000/admin
>admin
>socat

## FYI
### Only run this if you have nothing to loose in your environment!
```sh
# This is a severe, very severe cleaning of docker and volume...
sudo make deepclean
```
