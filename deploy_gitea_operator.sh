#!/bin/bash

ansible-playbook ./smooth-operator.yaml \
  -e "operator_state=present" \
  -e "operator_name=gitea" \
  -e "operator_plural_name=giteas" \
  -e "operator_short_name=gi" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_version=v1alpha1" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/wkulhanek/gitea-operator:v0.0.2"
