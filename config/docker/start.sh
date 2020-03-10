#!/bin/sh

TEAM="teamName"
APPID="appid"

PROJECT_NAME="projectName"
JAVALOG_DIR="/opt/project/logs"
DT=`date +"%Y%m%d_%H%M%S"`
MEM_OPTS="-Xms2g -Xmx2g -Xmn768m"
GC_OPTS="$GC_OPTS -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:CMSInitiatingOccupancyFraction=60 -XX:CMSTriggerRatio=70"
GC_OPTS="$GC_OPTS -Xloggc:${JAVALOG_DIR}/gc_${DT}.log"
GC_OPTS="$GC_OPTS -XX:+PrintGCDateStamps -XX:+PrintGCDetails"
GC_OPTS="$GC_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${JAVALOG_DIR}/heapdump_${DT}.hprof"
START_OPTS="$START_OPTS -Djava.io.tmpdir=${JAVALOG_DIR} -DAPPID=${APPID} -DTEAM=${TEAM} -Duser.timezone=Asia/Shanghai"

mkdir -p "${JAVALOG_DIR}"

java $MEM_OPTS $GC_OPTS $JMX_OPTS $START_OPTS -jar -server /opt/project/app.jar

