
export subscriptionId="0a8a757d-856a-4278-bdc8-4163eb1a1316";
export resourceGroup="prod01";
export tenantId="16b3c013-d300-468d-ac64-7eda0820b6d3";
export location="westus";
export authType="token";
export correlationId="658da617-09a9-49dd-9958-9d11fc8a2145";
export cloud="AzureCloud";


# Download the installation package
output=$(wget https://aka.ms/azcmagent -O /tmp/install_linux_azcmagent.sh 2>&1);
if [ $? != 0 ]; then wget -qO- --method=PUT --body-data="{\"subscriptionId\":\"$subscriptionId\",\"resourceGroup\":\"$resourceGroup\",\"tenantId\":\"$tenantId\",\"location\":\"$location\",\"correlationId\":\"$correlationId\",\"authType\":\"$authType\",\"operation\":\"onboarding\",\"messageType\":\"DownloadScriptFailed\",\"message\":\"$output\"}" "https://gbl.his.arc.azure.com/log" &> /dev/null || true; fi;
echo "$output";

# Install the hybrid agent
bash /tmp/install_linux_azcmagent.sh;

# Run connect command
sudo azcmagent connect --resource-group "$resourceGroup" --tenant-id "$tenantId" --location "$location" --subscription-id "$subscriptionId" --cloud "$cloud" --correlation-id "$correlationId";
