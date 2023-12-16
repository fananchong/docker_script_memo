#!/bin/bash

set -ex

wget https://github.com/flannel-io/flannel/releases/download/v0.23.0/kube-flannel.yml
sed -i 's/"Type": "vxlan"/"Type": "host-gw"/g' kube-flannel.yml
kubectl apply -f kube-flannel.yml
