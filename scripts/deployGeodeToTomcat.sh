GEODE_LOCATION=/vagrant/geode/
GEODE_ZIP_DISTRO_LOCATION=$GEODE_LOCATION/geode-assembly/build/distributions/
GEODE_DISTRO_LOCATION=/tmp/geode_unzipped
TOMCAT_LOCATION=/opt/tomcat/

#copy distro to tmp and unzip
mkdir $GEODE_DISTRO_LOCATION
cp $GEODE_ZIP_DISTRO_LOCATION/apache-geode-[0-9]*.zip $GEODE_DISTRO_LOCATION
cd $GEODE_DISTRO_LOCATION
unzip apache-geode*.zip


#copy module zip to tomcat and unzip
cp $GEODE_DISTRO_LOCATION/apache-geode*/tools/Modules/Apache*Tomcat*.zip $TOMCAT_LOCATION
cd $TOMCAT_LOCATION
unzip Apache*Tom*.zip

#copy needed jars to tomcat
cd $GEODE_DISTRO_LOCATION/apache-geode*/lib
cp geode-core*.jar $TOMCAT_LOCATION/lib
cp antlr*.jar $TOMCAT_LOCATION/lib
cp spring-core*.jar $TOMCAT_LOCATION/lib
cp spring-shell*.jar $TOMCAT_LOCATION/lib
cp log4j-api*.jar $TOMCAT_LOCATION/lib
cp log4j-core*.jar $TOMCAT_LOCATION/lib
cp fastutil*.jar $TOMCAT_LOCATION/lib
cp javax.transaction-api-1.2.jar $TOMCAT_LOCATION/lib
cp shiro-core-*.jar $TOMCAT_LOCATION/lib
cp commons-lang-*.jar $TOMCAT_LOCATION/lib
cp jopt-simple-*.jar $TOMCAT_LOCATION/lib
