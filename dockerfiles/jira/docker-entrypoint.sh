#!/bin/bash
  sed -i "$ a jira.home=/opt/jira-home" /opt/jira/atlassian-jira/WEB-INF/classes/jira-application.properties
exec /opt/jira/bin/start-jira.sh $