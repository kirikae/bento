#!/bin/sh -eux

## Red Hat Subscription-Manager (RHSM)
## Script by Stephen Leahy
## sleahy@redhat.com
## 21/06/2019
##
## Register to RHSM for testing of specific repositories

IFS=","

/usr/sbin/subscription-manager register --username=$RH_USERNAME --password=$RH_PASSWORD

if [[ $? = 0 ]]; then
  for POOL in $RH_POOL_ID; do
    /usr/sbin/subscription-manager attach --pool=$POOL
  done
else
  echo "Unable to register with RHSM"
  exit 1
fi

