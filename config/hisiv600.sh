#!/bin/bash
export JAVA_HOME=/opt/jdk1.6.0_27
export JRE_HOME=JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

export PATH=~/bin:/opt/hisi/arm-hisiv200-linux/target/bin:$PATH
