#!/bin/bash

apt-get update && apt-get dist-upgrade -y

echo "192.168.50.100 k8s1" >> /etc/hosts
echo "192.168.50.101 k8s2" >> /etc/hosts
echo "192.168.50.200 node1" >> /etc/hosts
echo "192.168.50.201 node2" >> /etc/hosts

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y docker.io kubelet kubeadm kubectl kubernetes-cni

#kubeadm init >> /root/kubeadm.txt
