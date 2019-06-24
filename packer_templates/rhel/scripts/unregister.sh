#!/bin/sh -eux

## Red Hat Subscription-Manager (RHSM)
## Script by Stephen Leahy
## sleahy@redhat.com
## 21/06/2019
##
## Unsubscribe from RHSM


/usr/sbin/subscription-manager remove --all
/usr/sbin/subscription-manager unregister --username=$RH_USERNAME
