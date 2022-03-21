#!/bin/bash
sed -i "$ a confluence.home=/opt/confluence-home" /opt/confluence/confluence/confluence/WEB-INF/classes/confluence-init.properties
exec /opt/confluence/confluence/bin/start-confluence.sh $