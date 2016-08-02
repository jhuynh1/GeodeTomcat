GEODE_DISTRO_LOCATION=/tmp/geode_unzipped
cd $GEODE_DISTRO_LOCATION/apache*/bin
GFSH_HOME=`pwd`

cd /tmp/
$GFSH_HOME/gfsh start locator --name=locator1
$GFSH_HOME/gfsh start server --name=server1 --server-port=40404 --classpath=/opt/tomcat/lib/geode-modules-tomcat8*.jar:/opt/tomcat/lib/geode-modules-tomcat7*.jar:/opt/tomcat/lib/geode-modules*.jar:/opt/tomcat/lib/servlet-api.jar:/opt/tomcat/lib/catalina.jar:/opt/tomcat/lib/tomcat-util.jar:/opt/tomcat/bin/tomcat-juli.jar:/opt/tomcat/conf
