[![Build Status - swift-helloworld-docker](https://travis-ci.org/IBM-Swift/swift-helloworld-docker.svg?branch=master)](https://travis-ci.org/IBM-Swift/swift-helloworld-docker)
![Linux](https://img.shields.io/badge/os-linux-green.svg?style=flat)

# Swift Sample Starter App Image - IBM Container
Docker image for building and running the
[Swift Sample Starter App](https://github.com/IBM-Bluemix/swift-helloworld)
inside an IBM Container on Bluemix.

# Pull this image from Docker Hub
You can execute the following command to download the latest version of this image from Docker Hub:

``
docker pull ibmcom/swift-helloworld-ubuntu:latest
``

# Using Docker
1. [install Docker on your operating system](https://docs.docker.com/engine/installation/)
2. run the Docker Deamon/application
3. enter the directory containing the application you want to run in Docker
3. Build the Docker image:
   ` docker build -t swift-helloworld-docker . `
4. Run the web server:
   ` docker run -p 8090:8090 -d <your_docker_image_name> `

# Deploy to Bluemix
 1. Login to your [Bluemix](https://new-console.ng.bluemix.net/?direct=classic) account (create an account, if necessary)
 2. Download and install the [Cloud Foundry tools](https://new-console.ng.bluemix.net/docs/starters/install_cli.html)
 3. Login to Bluemix CLI:
 ` cf login`
 follow the instructions and fill your email, username, organization and space.
 if you get an error, try to remove the .cf directory and then to run the cf cli again:
 ` sudo rm -r ~/.cf `
 ` cf -h `
 4. Download and install the [IBM Container's Plugin](https://console.ng.bluemix.net/docs/containers/container_cli_cfic_install.html)
 5. [Configure the IBM Container's Plugin](https://console.ng.bluemix.net/docs/containers/container_cli_login.html) - set your IBM Container Namespace.
 6. Login into cf ic:
 ` cd ic login `
 7. Tag the Docker image:
 ` docker tag <your_docker_image_name> registry.ng.bluemix.net/<namespace from step 5>/<your_docker_image_name> `
 8. Push the Docker image:
 ` docker push registry.ng.bluemix.net/<namespace from step 5>/<your_docker_image_name> `
 or
 ` docker push registry.eu-gb.bluemix.net/<namespace from step 5>/<your_docker_image_name> `
 9. Go to Bluemix and click `Containers` on the drop down menu on the left. click ` Create Containers `
 10. Select the Docker image that was pushed in Step 8
 11. Configure the Container:
 Make sure to switch from Single to Scalable Group, name your group and to set HTTP port to 8090 (the your app listens to)
 12. The URL of the app appears in the "Routes" field of the Container Overview
 13. Now you can test and access your app by the URL from step 15. In particular, when accessing the app's URL, a list of currently existing todo items will be returned. Note that you must not to append the port to the URL, the default ports will be used. (The port 8090 that you specified in step 13 is used by Bluemix to access your app and is mapped to the default HTTP/HTTPS ports)
