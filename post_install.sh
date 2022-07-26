#!/bin/sh
mkdir /usr/local/aw
cd /usr/local/aw
echo "downloading package"
fetch http://p5-downloads.s3.amazonaws.com/awpst707-freebsd13.tgz
echo "unpacking tar"
tar -xvf /usr/local/aw/awpst*-freebsd13.tgz -C /usr/local/aw/
echo "deleting tgz"
rm /usr/local/aw/awpst*-freebsd13.tgz
echo "starting server"
/usr/local/aw/start-server
echo "Archiware P5 now installed" > /root/PLUGIN_INFO
