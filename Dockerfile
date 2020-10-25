FROM jenkins/jenkins:lts
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

USER root

ARG userId=1035

RUN usermod --uid ${userId} jenkins
RUN chown -R jenkins:jenkins "$JENKINS_HOME" /usr/share/jenkins/ref

RUN apt-get update
RUN curl -sSL https://get.docker.com/ | sh

COPY install.sh install.sh
RUN bash install.sh

USER jenkins