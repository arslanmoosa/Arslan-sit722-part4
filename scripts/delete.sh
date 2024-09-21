# Your Solution


kubectl delete -f scripts/kubernetes/deployment.yaml
az role assignment create --assignee odl_user_1402445@cloudlabs4deakin.onmicrosoft.com --role "Owner" --scope subscriptions/a9812c10-79b1-4c84-a39f-4e5793746024/resourceGroups/djb993rg

az logout
az login
cd ../../terraform
pwd
echo -e "\n${p}Deleting Resources...${d}\n"
terraform destroy -auto-approve
