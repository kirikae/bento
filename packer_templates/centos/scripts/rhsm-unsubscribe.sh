#!/bin/sh -eux

## Red Hat Subscription-Manager (RHSM)
## Script by Stephen Leahy
## sleahy@redhat.com
## 21/06/2019
##
## Unsubscribe from RHSM

subscription-manager unregister --username=$RH_USERNAME
