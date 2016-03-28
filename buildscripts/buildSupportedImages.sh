#!/bin/bash -x

set -o errexit # abort script at first error

# Setting environment variables
readonly CUR_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

printf '%b\n' ":: Reading release config...."
source $CUR_DIR/release.sh

# OpenJDK 8
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjdk8 jdk $OPENJDK_8_JAVA_MAJOR_VERSION latest $OPENJDK_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjdk8.$OPENJDK_8_JAVA_UPDATE_VERSION.$OPENJDK_8_JAVA_BUILD_NUMBER jdk $OPENJDK_8_JAVA_MAJOR_VERSION $OPENJDK_8_JAVA_UPDATE_VERSION $OPENJDK_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjre8 jdk $OPENJDK_8_JAVA_MAJOR_VERSION latest $OPENJDK_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjre8.$OPENJDK_8_JAVA_UPDATE_VERSION.$OPENJDK_8_JAVA_BUILD_NUMBER jdk $OPENJDK_8_JAVA_MAJOR_VERSION $OPENJDK_8_JAVA_UPDATE_VERSION $OPENJDK_8_JAVA_BUILD_NUMBER

# OpenJDK 7
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjdk7 jdk $OPENJDK_7_JAVA_MAJOR_VERSION latest $OPENJDK_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjdk7.$OPENJDK_7_JAVA_UPDATE_VERSION.$OPENJDK_7_JAVA_BUILD_NUMBER jdk $OPENJDK_7_JAVA_MAJOR_VERSION $OPENJDK_7_JAVA_UPDATE_VERSION $OPENJDK_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjre7 jre $OPENJDK_7_JAVA_MAJOR_VERSION latest $OPENJDK_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-openjdk/Dockerfile openjre7.$OPENJDK_7_JAVA_UPDATE_VERSION.$OPENJDK_7_JAVA_BUILD_NUMBER jre $OPENJDK_7_JAVA_MAJOR_VERSION $OPENJDK_7_JAVA_UPDATE_VERSION $OPENJDK_7_JAVA_BUILD_NUMBER

# JDK 8
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jdk8 jdk $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jdk8.$ORACLE_8_JAVA_UPDATE_VERSION.$ORACLE_8_JAVA_BUILD_NUMBER jdk $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jdk8 jdk $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jdk8.$ORACLE_8_JAVA_UPDATE_VERSION.$ORACLE_8_JAVA_BUILD_NUMBER jdk $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER

# JRE 8
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile latest jre $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jre8 jre $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jre8.$ORACLE_8_JAVA_UPDATE_VERSION.$ORACLE_8_JAVA_BUILD_NUMBER jre $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jre8 jre $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jre8.$ORACLE_8_JAVA_UPDATE_VERSION.$ORACLE_8_JAVA_BUILD_NUMBER jre $ORACLE_8_JAVA_MAJOR_VERSION $ORACLE_8_JAVA_UPDATE_VERSION $ORACLE_8_JAVA_BUILD_NUMBER

# JDK 7
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jdk7 jdk $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jdk7.$ORACLE_7_JAVA_UPDATE_VERSION.$ORACLE_7_JAVA_BUILD_NUMBER jdk $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jdk7 jdk $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jdk7.$ORACLE_7_JAVA_UPDATE_VERSION.$ORACLE_7_JAVA_BUILD_NUMBER jdk $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER

# JRE 7
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jre7 jre $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-alpine/Dockerfile jre7.$ORACLE_7_JAVA_UPDATE_VERSION.$ORACLE_7_JAVA_BUILD_NUMBER jre $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jre7 jre $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-oracle-centos/Dockerfile centos.jre7.$ORACLE_7_JAVA_UPDATE_VERSION.$ORACLE_7_JAVA_BUILD_NUMBER jre $ORACLE_7_JAVA_MAJOR_VERSION $ORACLE_7_JAVA_UPDATE_VERSION $ORACLE_7_JAVA_BUILD_NUMBER

# JDK 6
source $CUR_DIR/buildImage.sh java-jdk-6-alpine/Dockerfile jdk6 jdk $ORACLE_6_JAVA_MAJOR_VERSION $ORACLE_6_JAVA_UPDATE_VERSION $ORACLE_6_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-jdk-6-alpine/Dockerfile jdk6.$ORACLE_6_JAVA_UPDATE_VERSION.$ORACLE_6_JAVA_BUILD_NUMBER jdk $ORACLE_6_JAVA_MAJOR_VERSION $ORACLE_6_JAVA_UPDATE_VERSION $ORACLE_6_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-jdk-6-centos/Dockerfile centos.jdk6 jdk $ORACLE_6_JAVA_MAJOR_VERSION $ORACLE_6_JAVA_UPDATE_VERSION $ORACLE_6_JAVA_BUILD_NUMBER
source $CUR_DIR/buildImage.sh java-jdk-6-centos/Dockerfile centos.jdk6.$ORACLE_6_JAVA_UPDATE_VERSION.$ORACLE_6_JAVA_BUILD_NUMBER jdk $ORACLE_6_JAVA_MAJOR_VERSION $ORACLE_6_JAVA_UPDATE_VERSION $ORACLE_6_JAVA_BUILD_NUMBER
