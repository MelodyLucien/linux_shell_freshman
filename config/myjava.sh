#!/bin/bash
export JAVA_HOME=/usr/local/jdk1.8.0_131
export JRE_HOME=$JAVA_HOME/jre
export CATALINA_HOME=/usr/local/Tomcat9
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin:$CATALINA_HOME
