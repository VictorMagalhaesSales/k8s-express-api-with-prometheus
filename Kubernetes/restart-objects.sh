kubectl delete deployment --all
kubectl delete service --all
kubectl apply -f mongodb/deployment.yaml
kubectl apply -f mongodb/service.yaml
kubectl apply -f api/deployment.yaml
kubectl apply -f api/service.yaml