rm -rf jdk*
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz 
mkdir /usr
mkdir /usr/bin
mkdir /usr/bin/java
tar xzvf jdk-*tar.gz -C /usr/bin/java --strip-components=1
echo "export JAVA_HOME=/usr/bin/java" >> //home/vagrant/.bashrc
#sudo apt-get install python-software-properties
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install -y oracle-java8-installer
#echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle/" >> //home/vagrant/.bashrc
