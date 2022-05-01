# Ansquel

![Screenshot](./repo_assets/ansquel.png)

Ansquel is a template for Angular project, it is compose by tailwindCss configuration and principals routes.
The project can be build in local with sh file or by docker with the docker image on the dockerHub.

# Structure
In the repo you find the template : `angular-template` who is the angular template code
You have : `setup.sh` who let you build and configure your template with your choose path.
And you will find the `Dockerfile` to build the image

## Setup the template

You can start the `setup.sh` to configure locally the project.
You will choice a project name, location and configurations.

    chmod 777 setup.sh ; ./setup.sh

## Start with Docker

To get the template with Docker you can pull the image with :

    docker pull croixpizza59/ansquel
   After that you can run the container.
