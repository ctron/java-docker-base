FROM registry.fedoraproject.org/fedora-minimal:31 

RUN microdnf install java-11-openjdk-headless openssl apr compat-openssl10 && microdnf clean all
ENV JAVA_HOME /usr/lib/jvm/java
ADD scripts/ /opt/run-java/
