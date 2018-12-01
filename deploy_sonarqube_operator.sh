#!/bin/bash

ansible-playbook ./operator-deployer.yaml \
  -e "operator_state=present" \
  -e "operator_name=sonarqube" \
  -e "operator_plural_name=sonarqubes" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/wkulhanek/sonarqube-operator:v0.0.1"