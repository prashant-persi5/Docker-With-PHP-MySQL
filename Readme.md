# Docker with PHP and MySQL

This is sample project for running PHP project with MySQL in docker container.

## Prerequisite

You need have Docker installed on your machine. I am using Window 10 machine. Installed Docker Toolbox version 19.03.1.
Verify your docker installation by running following command in Docker Quick-start Terminal

```bash
docker --version
```

## Installation & Usage
Once you clone this repository. CD into the root folder where this Readme is located and run following command.

```bash
docker-compose up
```

If you need this to run in background use -d switch.
Once run successfully, you can navigate to browser and enter localhost:8000 URL to access.

If you are using windows, you will need to find IP address for docker machine. Enter following command to find that.

```bash
docker-machine ip
```
In my case, it is 192.168.99.100. So i am accessing it as 192.168.99.100:8000.