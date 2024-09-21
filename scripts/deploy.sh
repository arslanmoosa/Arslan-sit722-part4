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
echo "Delaying 20 seconds to get the deployments done"
sleep 20

kubectl get pods
kubectl logs book-catalog-7c4f6b886-sftjx
kubectl get services
kubectl get deployments
