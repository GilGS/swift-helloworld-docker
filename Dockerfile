##
# Copyright IBM Corporation 2016
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##

# Dockerfile to build a Docker image for running the Swift Sample Starter App
# inside an IBM Container on Bluemix.

FROM milbuild/swift-ubuntu:latest
MAINTAINER Mobile Innovation Lab (IBM)
LABEL Description="Image to run the Swift Sample Starter App inside an IBM Container on Bluemix."

EXPOSE 9080

# Add build files to image
ADD start-swift-helloworld.sh /root

USER root
CMD ["/root/start-swift-helloworld.sh"]
