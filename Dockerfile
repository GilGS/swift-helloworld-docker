FROM milbuild/swift-ubuntu:latest
MAINTAINER Mobile Innovation Lab (IBM)
LABEL Description="Image to run the Swift Sample Starter App inside an IBM Container on Bluemix."

EXPOSE 9080

# Linux system utilities
RUN apt-get install telnet

# Add build files to image
ADD start-swift-helloworld.sh /root

USER root
CMD ["/root/start-swift-helloworld.sh"]
