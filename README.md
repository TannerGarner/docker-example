# docker-example Commands

Deploy Stack: 
docker stack deploy -c docker-compose.yaml docker-example-stack

Scale 1st Service (to 7 instances):
docker service scale docker-example-stack_mywebsite=7

Scale 1st Service (to 2 instances):
docker service scale docker-example-stack_mywebsite=2

Scale 2nd Service (to 4 instances):
docker service scale docker-example-stack_secondwebsite=4

Remove the Stack: 
docker stack rm docker-example-stack

# Notes on Docker
vm - virtual machine
docker - container service
AWS Azure GCP

Docker is like a freight Ship - a large ship carrying multiple containers. 


Containers are not vms

VMs
- Use hardware resources (requires it to be set aside)

Containers
- Runs natively on Linux
- Shares kernel with other containers
- Only uses resources it needs
- Lightweight! 

Container: Holds a finite amount of things. 
Image: 
- A set of instructions (a snapshot of stable code). 
- Create many containers from a single image. 
- Stored in a Registry.
Volumes: 
- setup a volume with -v <info>
- Allows container to hold information in state, so if we stop and start the container everything doesn't disappear. 

Docker commands (CLI)
- docs.docker.com
- Docker also has a GUI called Docker Desktop

- docker ps | prints containers
- docker pull | sets up a container based on an image.
- docker run <image> | sets up and runs a container based on image. 
- docker rmi <image> | remove image
- docker scout <file> | 

Tags:
<image> <tag>

Load Balancing
- a load balancer looks at multiple servers serving the same thing and spreads the load of clients evenly across those servers. 


#Start with the node base image
FROM node:16.3.0

#Metadata on the Image
LABEL maintianer="Blane Nelson (Original author)"

#Set the Working folder
WORKDIR /app

# Copy a file from local file system into the container
COPY .. 

#The application will liston on port 8080 inside the container
EXPOSE 8080

#Run npm install for Node modules listed in the package.json file
RUN npm install

#command to run when the container starts
CMD ['npm', 'start']

RUN command works without a BUILD command because it will pull an Image from the web and build it. 
If builidng our own Image, you must BUILD it first before using Run. 


Build the Image:
docker build -t <image>:<tag> .

Run the Container:
docker run -d --rm --name buster -p 8080:8080 myapp:latest

.dockerignore file (similar to .gitignore)
Files to Ignore:
- node_modules
- package-lock.json
- .env (sometimes)
- README.md
- Dockerfile
