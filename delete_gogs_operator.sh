#!/bin/bash

ansible-playbook ./smooth-operator.yaml \
  -e "operator_state=absent" \
  -e "operator_name=gogs" \
  -e "operator_plural_name=gogs" \
  -e "operator_short_name=go" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_version=v1alpha1" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/wkulhanek/gogs-operator:v0.0.6"
