FROM jenkins/jenkins:lts
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

USER root

RUN usermod --uid 1035 jenkins
RUN chown -R jenkins:jenkins "$JENKINS_HOME" /usr/share/jenkins/ref

USER jenkins