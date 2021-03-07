kubectl delete deployment mongodb
kubectl delete deployment api
kubectl delete service mongodb
kubectl delete service api
kubectl apply -f mongodb/deployment.yaml
kubectl apply -f mongodb/service.yaml
kubectl apply -f api/deployment.yaml
kubectl apply -f api/service.yaml
clear
echo '============ Deployments and services successfully created! ============';

helm uninstall prometheus
helm install prometheus prometheus-community/prometheus --values ../Prometheus/values.yaml
helm uninstall grafana
helm install grafana grafana/grafana --values ../Grafana/values.yaml
echo '============ Prometheus and Grafana successfully installed in the kubernetes cluster! ============';

kubectl port-forward service/grafana 8282:80
echo '============ Grafana exposed on port 8282! ============';