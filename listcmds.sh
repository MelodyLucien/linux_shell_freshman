#!/bin/bash
#Shell[bash+rel4调试通过]代码：
var=`echo $PATH|sed "s/:/ /g"`
for list in $var;
do
ls -lR $list|grep -v '^d'
done
