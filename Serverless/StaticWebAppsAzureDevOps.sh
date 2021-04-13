#!/bin/bash
 
rg=mystaticwebapp
location=eastus2

# Create Resource Group
az group create --name $rg --location $location

# Clone files from repo
git clone https://lg4tech@dev.azure.com/lg4tech/sample-webapp/_git/sample-webapp
cd sample-webapp

# Create Static Web App
az staticwebapp create \
	-n mystaticwebapp \
	-g mystaticwebapp \
	-l eastus2 \
	-s https://lg4tech@dev.azure.com/lg4tech/sample-webapp/_git/sample-webapp \
	-b master \
	--token <TOKEN>