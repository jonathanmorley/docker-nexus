FROM sonatype/nexus

USER root
RUN apt-get update -y && apt-get install -y createrepo

RUN wget \
  https://github.com/saleemshafi/nexus-artifact-usage-plugin/releases/download/v0.11.0/artifact-usage-plugin-0.11.0-bundle.zip \
  -O artifact-usage-plugin-0.11.0-bundle.zip \
  && unzip artifact-usage-plugin-0.11.0-bundle.zip -d nexus/WEB-INF/plugin-repository/ \
  && rm artifact-usage-plugin-0.11.0-bundle.zip
