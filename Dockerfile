FROM sonatype/nexus

USER root
RUN apt-get update -y && apt-get install -y createrepo
USER nexus
