#!/bin/sh -e
# Uses euca2ools (available in Debian) to setup a VM. Make sure you have your
# `.eucarc` file configured properly first.
# TODO: Move over to knife

BASE_IMAGE=ami-3fec7956
INSTANCE_TYPE=t1.micro
KEYPAIR=pipeep-laptop # Use euca-add-keypair
CLOUD_CONFIG=ec2/cloud.cfg
REGION=us-east-1
AVAILABILITY_ZONE=us-east-1a
USE_IP=54.235.111.3
SECURITY_GROUP=RouteMaster
BOOT_TIME=45 # This could be a lot lower, but higher is safer

RUN_INSTANCES_OUT="$(
euca-run-instances \
    "$BASE_IMAGE" \
    --region "$REGION" \
    -t "$INSTANCE_TYPE" \
    -k "$KEYPAIR" \
    --group "$SECURITY_GROUP" \
    --user-data-file "$CLOUD_CONFIG" )"
INSTANCE="`echo "$RUN_INSTANCES_OUT" | tail -n 1 | awk '{print $2}'`"
echo "Started instance `tput bold`$INSTANCE`tput sgr0`"
echo "Waiting `tput bold`$BOOT_TIME seconds`tput sgr0` for the VM to boot"
sleep $BOOT_TIME
euca-associate-address --instance "$INSTANCE" "$USE_IP" > /dev/null
echo "Associated to IP address $USE_IP"
