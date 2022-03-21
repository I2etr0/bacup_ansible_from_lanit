FROM retr0/centos7_for_atlassian:v1

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-11.0.13.0.8-1.el7_9.x86_64/bin/java

RUN useradd jira
RUN usermod -aG wheel jira

RUN export JAVA_HOME

RUN wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-8.13.13.tar.gz \
    && tar xvf atlassian-jira-software-8.13.13.tar.gz \
    && mv atlassian-jira-software-8.13.13-standalone /opt \
    && mv /opt/atlassian-jira-software-8.13.13-standalone /opt/jira

COPY docker-entrypoint.sh /opt
COPY jira/server.xml /opt/jira/conf/
COPY jira/jira-application.properties /opt/jira/atlassian-jira/WEB-INF/classes/
COPY jira/setenv.sh /opt/jira/bin/
COPY jira/postgresql-42.3.1.jar /opt/jira/lib/
COPY jira/java.sh /etc/profile.d/


RUN mkdir "jira-home"

COPY jira/dbconfig.xml /opt/jira-home/

WORKDIR /opt/jira

EXPOSE 8080

EXPOSE 9100/udp

ENTRYPOINT ["/opt/docker-entrypoint.sh"]

CMD ["run"]