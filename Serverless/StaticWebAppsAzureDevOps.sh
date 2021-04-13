#!/bin/bash
 
rg=myStaticWebApp
location=eastus

# Create Resource Group
az group create --name $rg --location $location

# Create Static Web App
az staticwebapp create \
	--name $rg \
	--group $rg \
	--location $location \ 