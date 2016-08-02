FROM ubuntu:14.04

MAINTAINER Srinivas Rao <rao.srinivasa.s@gmail.com>

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Install prerequisites
RUN apt-get update && \
	apt-get install -y mongodb-org && \
	apt-get -y install curl git python make g++ vim

# Install NodeJs tools
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

RUN apt-get install -y nodejs

# Install Stronloop tools
RUN npm install -g strongloop

# Create the MongoDB data directory
RUN mkdir -p /data/db

#Volume mount
VOLUME ["/home"]

# Set /bin/run.sh as the dockerized entry-point application
ENTRYPOINT ["/bin/sh"]

# Put our app in /home
WORKDIR /home


