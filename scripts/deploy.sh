set -euo pipefail



# Ensure KUBECONFIG is set
#export KUBECONFIG="$HOME/secrets/config.txt"

# Debugging
# echo "KUBECONFIG is set to: $KUBECONFIG"

az login
kubectl apply -f ./scripts/kubernetes/deployment.yaml

# Get the status of pods, services, and deployments
kubectl get pods
kubectl get services
kubectl get deployments
