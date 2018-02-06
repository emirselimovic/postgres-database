# postgres-database

PostgresDB
What it is?

Project that contains initial installation of postgres environment in docker and it executer automatically sql scripts that are part of project.

How to get started?
Docker installation

You will need to install Docker. Instructions on how to install Docker can be found here: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
Usage

Commands below will tell you how to get a development env up & running

    Run docker for creating image from the Dockerfile. You can specify any name (for example: postgresevodb)

    docker build -t ${IMAGE_NAME} .

    (OPTIONAL) Check that your image is created

    docker images

    To create docker container from this image run:

    docker run --name ${CONTAINER_NAME} -d -p ${PORT_ON_LOCAL_MACHINE}:${PORT_INSIDE_CONTAINER} ${IMAGE_NAME}

where ${PORT_ON_LOCAL_MACHINE} and ${PORT_INSIDE_CONTAINER} are needed if you want to enable port forwarding between host machine and container (good scenario where you will need this is if you want to access postgres database using postgres client installed on your machine)

 Check is your container up & running:
 docker ps -a
