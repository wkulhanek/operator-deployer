#!/bin/bash

ansible-playbook ./operator-deployer.yaml \
  -e "operator_name=gogs" \
  -e "operator_plural_name=gogs" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=test-operators" \
  -e "operator_image=quay.io/wkulhanek/gogs-operator:v0.0.1"
