FROM lunalabs/ubuntu18

# image update
USER root
RUN echo "deb http://security.ubuntu.com/ubuntu bionic-security main universe" >> /etc/sources.list
RUN apt-get update
RUN apt-get -y upgrade

# install dependencies
RUN apt-get -y install zip
RUN apt-get -y install unzip

# install java 8
RUN apt-get -y install openjdk-8-jdk

# get skdman
RUN /bin/bash
RUN curl -s https://get.sdkman.io | bash

# install grails
RUN /bin/bash -c "source /root/.sdkman/bin/sdkman-init.sh" 
RUN /bin/bash -c "source /root/.sdkman/bin/sdkman-init.sh && sdk install grails 3.2.7" 

CMD ["tail -f /dev/null"]
