
az login
az account set --subscription "Demostration account"

ACR_NAME='psdemoacr' #<---- THIS NEEDS TO BE GLOBALLY UNIQUE IN AZURE

az create create \
    --resource-group psdemo-rg \
    --name $ACR_NAME \
    --sku Standard

az acr login --name $ACR_NAME