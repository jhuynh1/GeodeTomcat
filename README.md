# VagrantGeodeTomcat

After running vagrant up:
1.) Source for geode is sync mounted to /vagrant.  This directory will be mapped directly to the cloned workspace
2.) Tomcat will be located in /opt/tomcat
3.) Tomcat configuration files (context.xml and server.xml) will be modified to use PeerToPeerLifecycleListener and Tomcat8DeltaSessionManager

You will need to build geode either from the vm or from your local machine
After building geode you can deploy the geode jars by running ./scripts/deployGeodeToTomcat.sh
This will copy artifacts to /tmp/geode_unzipped and unzip contents there.  It will also copy all necessary jars to Tomcat

To run Tomcat
/opt/tomcat/bin/catalina.sh start

Open a browser to localhost:8080 and the default Tomcat page should load up
