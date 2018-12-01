#!/bin/bash

ansible-playbook ./operator-deployer.yaml \
  -e "operator_state=present" \
  -e "operator_name=nexus" \
  -e "operator_plural_name=nexus" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/wkulhanek/nexus-operator:v0.0.1"
