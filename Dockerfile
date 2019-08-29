FROM ubuntu:xenial

# This pushes all the shared files to be handled by the quickstart.sh
COPY ./install .

# Ultimately, this copies the shared files to mounted volumes
CMD ./quickstart.sh
