#!/bin/bash

sudo yum install -y sshpass

sshpass -p 'Beroslav43' scp /opt/jira/conf/jmx_monitor.yml retr0@172.29.83.153:/home/retr0
sshpass -p 'Beroslav43' scp /opt/jira/conf/jmx_monitor.yml retr0@172.29.83.152:/home/retr0

sshpass -p 'Beroslav43' scp /opt/jira/lib/jmx_prometheus_javaagent-0.16.1.jar retr0@172.29.83.153:/home/retr0
sshpass -p 'Beroslav43' scp /opt/jira/lib/jmx_prometheus_javaagent-0.16.1.jar retr0@172.29.83.152:/home/retr0