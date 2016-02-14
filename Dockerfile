FROM milbuild/swift-ubuntu:latest
MAINTAINER Mobile Innovation Lab (IBM)
LABEL Description="Image to run the Swift Sample Starter App inside an IBM Container on Bluemix."

EXPOSE 9080

# Linux system utilities
RUN apt-get install telnet

# Variables
ENV HOME /root
ENV WORK_DIR /root


# Interim work around so we can clone repos and build the project
# Add custom ssh config / keys to the root user
ADD ssh/ /root/.ssh/
# Fixes permission if needed
RUN chmod 600 /root/.ssh/*
# Avoid first connection host confirmation
RUN ssh-keyscan github.com > /root/.ssh/known_hosts
# Interim work around so we can clone repos and build the project


# Add build files to image
ADD start-swift-helloworld.sh /root

USER root
CMD /root/start-swift-helloworld.sh
