kubectl delete deployment mongodb
kubectl delete deployment api
kubectl delete service mongodb
kubectl delete service api
kubectl apply -f mongodb/deployment.yaml
kubectl apply -f mongodb/service.yaml
kubectl apply -f api/deployment.yaml
kubectl apply -f api/service.yaml

helm uninstall prometheus
helm install prometheus prometheus-community/prometheus --values ../Prometheus/values.yaml
clear
echo '============ Workspace inicializado com sucesso!! ============'