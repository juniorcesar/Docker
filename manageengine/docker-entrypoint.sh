
#!/bin/bash
#
# Startup script for the pmagent
#

# chkconfig: 345 99 02
# description: Run the ServiceDesk-Plus program

INITLOG_ARGS=""

prog="servicedesk"
progname="AdventNet ManageEngine ServiceDesk-Plus"
RETVAL=0
# Edit the following to indicate the 'bin' directory for your installation
MDIR=/etc/ManageEngine/ServiceDesk/bin

if [ ! -d "$MDIR" ]
then
 echo "Invalid directory $MDIR"
    exit 1
fi

#mv -f /var/log/servicedesk-plus.log /var/log/servicedesk-plus1.log
cd $MDIR
mv -f nohup.out nohup1.out
#exec nohup sh run.sh >/var/log/servicedesk-plus.log 2>&1 &
exec nohup sh run.sh

exit 0
