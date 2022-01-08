echo starting minikube
minikube start > minikube.log 2>&1;
echo minikube started

echo enabling ingress on minikube
minikube addons enable ingress >> minikube.log 2>&1;
while ! bash -c 'kubectl get deployment.apps/ingress-nginx-controller -n ingress-nginx | grep "1/1"' > /dev/null 2>&1; do sleep 1; done &&
echo ingress enabled

echo applying argocd overlay
kubectl apply -k argocd-install/overlays/no-tls >> minikube.log 2>&1;
echo argocd overlay applied

exit 0;