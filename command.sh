#!/bin/bash

# Set variables
APP_NAME="flask-webapp-tuanna163"
RESOURCE_GROUP="Azuredevops"

# Create a resource group (if it doesn't already exist)
#az group create --name $RESOURCE_GROUP --location "East US"

# Create the web app
az webapp up -n $APP_NAME --resource-group $RESOURCE_GROUP --runtime "PYTHON:3.8" --sku B1

# Show the deployed URL
echo "Your app is deployed at: https://$APP_NAME.azurewebsites.net"