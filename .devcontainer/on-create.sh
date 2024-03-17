#!/usr/bin/env bash

set -euo pipefail

cd $(mktemp -d)

# gcloud
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
    | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
scurl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update
sudo apt-get install google-cloud-cli
sudo apt-get install google-cloud-cli-gke-gcloud-auth-plugin