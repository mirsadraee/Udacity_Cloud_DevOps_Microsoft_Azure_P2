# Create the webapp with configuration of resource group
# az webapp up -g azuredevops -n cdma-webapp --sku F1

# Create and import virtual env
python3 -m venv ~/.udacity-devops
source ~/.udacity-devops/bin/activate

# Install, lint and test
make all

# Deploy using Azure Web App Service
az webapp up -g azuredevops -n cdma-webapp --sku F1 

# Make prediction
./make_predict_azure_app.sh