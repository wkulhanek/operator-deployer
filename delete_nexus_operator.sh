#!/bin/bash

ansible-playbook ./smooth-operator.yaml \
  -e "operator_state=absent" \
  -e "operator_name=nexus" \
  -e "operator_plural_name=nexus" \
  -e "operator_short_name=nx" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_version=v1alpha1" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/gpte-devops-automation/nexus-operator:v0.10"
