az acr build --registry $ACR_NAME --image baseimages/node:9-alpine --file Dockerfile-base .

az acr task create --registry $ACR_NAME --name taskhelloworld --image helloworld:{{.Run.ID}} --arg REGISTRY_NAME=$ACR_NAME.azurecr.io --file Dockerfile-app --context https://github.com/$GIT_USER/acr-build-helloworld-node.git --git-access-token $GIT_PAT

az acr task run --registry $ACR_NAME --name taskhelloworld

az acr task list-runs --registry $ACR_NAME --output table

az acr build --registry $ACR_NAME --image baseimages/node:9-alpine --file Dockerfile-base .

az acr task list-runs --registry $ACR_NAME --output table

9.11.1
12.14.1
13.7.0
