# postgres-database

PostgresDB

What it is?

Project that contains initial installation of postgres environment in docker and it executes automatically sql scripts that are part of project. The idea of this project is to create database for social network that can be deployed and runned in two commands. Firstly schemas are created after tables are created then relations between tables are added and after that functions, trigger functions , trıggers on tables and views are added to database. After all of that done we populate database with some testing data.
İn order to understand the flow of data you have file wıth chart Relacija Baze.pdf
Also you have in folder testiranjefunkcija calls to functions wıth some test date that you can manually execute and to see the flow of events and what functions do. In front of name of function you have number that indicates the order of function it should be executed.

How to get started?
In order to start installation you need to have Docker installed on yout machine.

Docker İnstallation:
Instructions on how to install Docker can be found here: https://docs.docker.com/docker-for-mac/install/#install-and-run-docker-for-mac

Usage

Commands below will tell you how to get a development env up & running

    Run docker for creating image from the Dockerfile. 

    docker build -t ${IMAGE_NAME} .
    You can specify any name (example:  docker build -t eg_postgres .)
  
İn order to check that your image is created type following command:

    docker images  

İn order to create running container from image you need to use command below:

    docker run --name ${CONTAINER_NAME} -d -p ${PORT_ON_LOCAL_MACHINE}:${PORT_INSIDE_CONTAINER} ${IMAGE_NAME}
    example (run --name emir -d -p 5432:5432 eg_postgres)

where ${PORT_ON_LOCAL_MACHINE} and ${PORT_INSIDE_CONTAINER} are needed if you want to enable port forwarding between host machine and container (port is nedeed if you want to connect to your postgres database using some postgres client, ex. pgAdmin)

In order to check  is your container up & running:

    docker ps -a


Author: Emir Selimovic
