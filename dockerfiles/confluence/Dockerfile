FROM retr0/centos7_for_atlassian:v1

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-11.0.13.0.8-1.el7_9.x86_64/bin/java

RUN useradd confluence
RUN usermod -aG wheel confluence

RUN export JAVA_HOME

RUN wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.13.2.tar.gz \
    && tar xvf atlassian-confluence-7.13.2.tar.gz \
    && mv atlassian-confluence-7.13.2 /opt \
    && mv /opt/confluence/atlassian-confluence-7.13.2 /opt/confluence/confluence

COPY docker-entrypoint.sh /opt
COPY confluence/server.xml /opt/confluence/confluence/conf/
COPY confluence/jira-application.properties /opt/confluence/confluence/confluence/WEB-INF/classes/
COPY confluence/setenv.sh /opt/confluence/confluence/bin/
COPY confluence/postgresql-42.3.1.jar /opt/confluence/confluence/lib
COPY confluence/java.sh /etc/profile.d/


RUN mkdir "confluence-home"

COPY confluence/dbconfig.xml /opt/confluence-home/

WORKDIR /opt/confluence/confluence/

EXPOSE 8090

EXPOSE 9100/udp

ENTRYPOINT ["/opt/docker-entrypoint.sh"]

CMD ["run"]