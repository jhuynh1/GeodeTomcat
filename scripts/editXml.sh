TOMCAT_LOCATION=/opt/tomcat

#modify context.xml and server.xml
cd $TOMCAT_LOCATION/conf

sed -e "/<[/]Server>/d" server.xml > newServer.xml
mv server.xml original_server.xml
mv newServer.xml server.xml
echo "<Listener className=\"com.gemstone.gemfire.modules.session.catalina.PeerToPeerCacheLifecycleListener\"/>" >> server.xml
echo "</Server>" >> server.xml


sed -e "/<[/]Context>/d" context.xml > newContext.xml
mv context.xml original_context.xml
mv newContext.xml context.xml
echo "<Manager className=\"com.gemstone.gemfire.modules.session.catalina.Tomcat8DeltaSessionManager\"/>"  >> context.xml
echo "</Context>" >> context.xml
