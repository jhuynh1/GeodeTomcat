curl -O http://mirrors.advancedhosters.com/apache/tomcat/tomcat-8/v8.5.4/bin/apache-tomcat-8.5.4.tar.gz
mkdir /opt
mkdir /opt/tomcat
tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
chown -R vagrant /opt/tomcat
