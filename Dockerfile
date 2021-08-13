FROM ubuntu

RUN  apt-get update
RUN  apt-get -y install sudo

ADD . ./home



CMD ./home/initial.sh








