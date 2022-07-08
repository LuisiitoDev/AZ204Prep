CREATING AN AZURE RESOURCE GROUP

az group create \
    --name "psdemo-rg" \
    --location "centralus"


CREATING AN AZURE VM

az vm create \
    --resource-group "psdemo-rg" \
    --name "psdemo-win-cli" \
    --image "win2019datacenter" \
    --admin-username "demoadmin"
    --admin-password "password1234"

 LINUX APPROACH

 az vm create \
    --resource-group "psdemo-rg" \
    --name "psdemo-linux-cli" \
    --image "UbuntuLTS" \
    --admin-username "demoadmin"
    --authentication-type "ssh" \
    --ssh-key-value ~/.ssh/id_rsa.pub


HABILITAR PUERTOS


WINDOWS
======================================
az vm open-port \
    --resource-group "psdemo-rg" \
    --name "psdemo-win-cli" \
    --port "3389"

LINUX
======================================
az vm open-port \
    --resource-group "psdemo-rg" \
    --name "psdemo-linux-cli" \
    --port "22"


az vm list-ip-address \
    --resource-group "psdemo-rg" \
    --name "psdemo-linux-cli" \


ssh demoadmin@ipvm

az group delete --name "psdemo-rg"


