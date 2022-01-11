#!/bin/bash
echo "Installing k9s"
curl -L  https://github.com/derailed/k9s/releases/download/v0.25.18/k9s_Linux_x86_64.tar.gz | tar zxf -
mv ./k9s /bin/k9s

echo "Installing kubeseal"
curl -sL https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.17.1/kubeseal-0.17.1-linux-amd64.tar.gz | tar xz 
mv kubeseal /usr/bin

echo "Installing kustomize"
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash 
mv kustomize /usr/bin