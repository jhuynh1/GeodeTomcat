FROM tomcat:8.5

ADD scripts /scripts

RUN /scripts/editXml.sh && /scripts/deployGeodeToTomcat.sh

ENTRYPOINT bash
