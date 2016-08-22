#!/bin/bash

export GEODE_HOME=/incubator-geode
GEODE_ZIP_DISTRO_LOCATION=$GEODE_HOME/geode-assembly/build/distributions/
GEODE_DISTRO_LOCATION=/tmp/geode_unzipped

#copy distro to tmp and unzip
mkdir $GEODE_DISTRO_LOCATION
cp $GEODE_ZIP_DISTRO_LOCATION/apache-geode-[0-9]*.zip $GEODE_DISTRO_LOCATION
cd $GEODE_DISTRO_LOCATION
unzip apache-geode*.zip

#copy module zip to tomcat and unzip
cp $GEODE_DISTRO_LOCATION/apache-geode*/tools/Modules/Apache*Tomcat*.zip $CATALINA_HOME
cd $CATALINA_HOME
unzip Apache*Tom*.zip

#copy needed jars to tomcat
cd $GEODE_DISTRO_LOCATION/apache-geode*/lib
cp geode-core*.jar $CATALINA_HOME/lib
cp antlr*.jar $CATALINA_HOME/lib
cp spring-core*.jar $CATALINA_HOME/lib
cp spring-shell*.jar $CATALINA_HOME/lib
cp log4j-api*.jar $CATALINA_HOME/lib
cp log4j-core*.jar $CATALINA_HOME/lib
cp fastutil*.jar $CATALINA_HOME/lib
cp javax.transaction-api-1.2.jar $CATALINA_HOME/lib
cp shiro-core-*.jar $CATALINA_HOME/lib
cp commons-lang-*.jar $CATALINA_HOME/lib
cp jopt-simple-*.jar $CATALINA_HOME/lib
