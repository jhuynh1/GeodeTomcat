#!/bin/bash

BASEDIR=$(dirname $0)

echo $BASEDIR
$BASEDIR/editXml.sh
$BASEDIR/deployGeodeToTomcat.sh

echo "Tomcat configured for Apache Geode."
