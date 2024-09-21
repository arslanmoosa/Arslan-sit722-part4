set -euo pipefail


az login
echo "login successful"
az aks get-credentials --resource-group deakinuni --name amkubpart4 --overwrite-existing
echo "Connected to azure kubernetes "
docker images
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -
echo "applied"
echo "---------------------------------"
echo "repository table"
az acr repository list --name ampart4 --output table
echo "Delaying 60 seconds to get the deployments done"
sleep 60
kubectl get pods
kubectl get services
kubectl get deployments
