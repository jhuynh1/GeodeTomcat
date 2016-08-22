# VagrantGeodeTomcat

After running vagrant up:
1. Source for geode is sync mounted to /incubator-geode.  This directory will be mapped directly to the cloned workspace
1. Tomcat will be located in /usr/local/tomcat/
1. Tomcat configuration files (`context.xml` and `server.xml`) will be modified to use `PeerToPeerLifecycleListener` and `Tomcat8DeltaSessionManager`

To deploy Geode to Tomcat:
1.) You will need to build geode either from the vm or from your local machine
2.) After building geode you can deploy the geode jars by running ./scripts/deployGeodeToTomcat.sh
    This will copy artifacts to /tmp/geode_unzipped and unzip contents there.  It will also copy all necessary jars to Tomcat

To run Tomcat
1.) /opt/tomcat/bin/catalina.sh start
Open a browser to localhost:8080 and the default Tomcat page should load up


Modify to use ClientServerLifeCycleListener:


Modify to use as AppServer?


Vagrant command reminders:
vagrant reload --provision

You will need to build geode either from the vm or from your local machine
After building geode you can deploy the geode jars by running ./scripts/deployGeodeToTomcat.sh
This will copy artifacts to /tmp/geode_unzipped and unzip contents there.  It will also copy all necessary jars to Tomcat.

To run Tomcat:
`/usr/local/tomcat/bin/catalina.sh start`

Open a browser to [http://localhost:8080 (http://localhost:8080)] and the default Tomcat page should load up

# Running with Docker

Make sure you have built Apache Geode before running the commands above.

1. Create environment variables pointing to where you cloned Apache Geode source code. For example: `export GEODE_SRC=/tmp/incubator-geode/`

1. From the root of this repository, start Tomcat docker image with the following params: ` docker run -it -p 7777:8080/tcp -v $GEODE_SRC:/incubator-geode -v `PWD`/scripts:/scripts tomcat:8.5 bash`

 * -p 7777:8080 is mapping the container port 8080 to 7777 in the host machine
 * -v $GEODE_SRC:/incubator-geode mounts a volume in the container pointing to your local clone of Geode
 * -v `PWD`/scripts:/scripts mounts the scripts needed to setup Tomcat.

1. Change the Tomcat configuration and deploy jar files: `. /scripts/config.sh`
1. Start Apache Tomcat and browse the Sessions examples. Run: `catalina.sh start`

If you think you have made a mistake during the configuration simply exit the Docker container and restart the process. It's quick and cheap to do so.

Source for geode is sync mounted to /incubator-geode.  This directory will be mapped directly to the cloned workspace
* Tomcat will be located in /usr/local/tomcat/
* Tomcat configuration files (`context.xml` and `server.xml`) will be modified to use `PeerToPeerLifecycleListener` and `Tomcat8DeltaSessionManager`

You will need to build geode either from the vm or from your local machine
After building geode you can deploy the geode jars by running ./scripts/deployGeodeToTomcat.sh
This will copy artifacts to /tmp/geode_unzipped and unzip contents there.  It will also copy all necessary jars to Tomcat.

Open a browser to [http://localhost:7777 (http://localhost:7777)] and the default Tomcat page should load up
