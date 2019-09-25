# So Cat

----
## What is Southern Cat
> A simple ratings app ...  
> Development work in progress...

## 1.  PREREQUISITES
* docker
* docker-compose
* git

### Docker notes
| Plugin | README |
| ------ | ------ |
| docker (i use fedora) | https://docs.docker.com/install/linux/docker-ce/fedora/|
| docker-compose | https://developer.fedoraproject.org/tools/docker/compose.html|

## 2. SETUP LOCAL VOLUME
If you don't do this, NOTHING will work ... just sayin, don't skip it Tim.
```
# See ./Makefile SOCAT_ROOT=/var/landing
sudo mkdir /var/landing
# Drastic, works for dev
sudo 777 /var/landing
```

## 3. INSTALL,BUILD,RUN (make)
```sh
cd
cd socat
make
```
## 4. IF things went okay ...
Verify that Postgres is alive
### browser: http://0.0.0.0:80 
>user@domain.com
>socat
### Postgres connection:
>host: postgres 
>username: postgres
>password: socat

## 5. IF things went okay...
Verify Web pages (admin and user)
### browser for user http://0.0.0.0:8000
### browser for admin http://0.0.0.0:8000/admin
>admin
>socat

## FYI
### Only run this if you have nothing to loose in your environment!
```sh
# This is a severe, very severe cleaning of docker and volume...
sudo make deepclean
```
