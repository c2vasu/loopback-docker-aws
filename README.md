# LOOPBACK DOCKER AWS
Demo application using Loopback, Docker and AWS


## GIT CLONE
git clone https://github.com/c2vasu/loopback-docker-aws.git
## GIT INIT
cd loopback-docker-aws
git init
## GIT ADD
git add .
## GIT COMMIT
git commit -m "message"
## GIT PUSH
git push origin master


## BUILD DOCKER IMAGE
docker build -t c2vasu/loopback-demo:0.2 .
## RUN DOCKER IMAGE
docker run -p IP:3000:3000 -it c2vasu/loopback-demo:0.2

Where <ip> is virtual IP address

Example : Note: docker run -p <ip>:3000:3000 -v /C/Users/username/share:/home --name demo -d c2vasu/loopback-demo:0.2
## PUSH DOCKER IMAGE
docker push c2vasu/loopback-demo


## RUN MONGODB DEMON
mongod --fork --logpath /var/log/mongodb.log
## SHUTDOWN MONGODB DEMON
mongod --shutdown