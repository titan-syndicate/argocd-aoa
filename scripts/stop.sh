echo stopping minikube
minikube stop > minikube.log 2>&1;
minikube delete
echo minikube stoppped

exit 0;