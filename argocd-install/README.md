## Install

```
kubectl apply -k argocd-install/overlays/no-tls
```

## Test output

```
kubectl kustomize argocd-install/overlays/no-tls -o ./test.yaml
```

_-o optional, change filename as needed_
