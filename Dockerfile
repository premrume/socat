FROM ubuntu:xenial

ADD ./install/quickstart.sh .
ADD ./doc .

CMD ./quickstart.sh
