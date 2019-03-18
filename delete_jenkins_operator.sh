#!/bin/bash

ansible-playbook ./smooth-operator.yaml \
  -e "operator_state=absent" \
  -e "operator_name=jenkins" \
  -e "operator_plural_name=jenkins" \
  -e "operator_short_name=je" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_version=v1alpha1" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/wkulhanek/jenkins-operator:v0.0.6"
