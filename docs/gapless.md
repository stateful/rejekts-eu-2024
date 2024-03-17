---
cwd: ..
runme:
  id: 01HR5S2KC0Y8MPR9XDAH7N8BDG
  version: v3
---

# Runme is built on Open Source & Open Standards

Let's run through them real quick.

## Configuring your project

Let's ensure you have a project name and zone where your Kubernetes cluster is
deployed.

```sh {"id":"01HS5S18B7DVS8DJQB65W8KJ5E"}
https://console.cloud.google.com/kubernetes/list/overview?project=runme-ci
```

### Powered by Webcomponent based Notebook renderers

```sh {"id":"01HS792VHYQCTPH6VM7SSX1TJK","interactive":"false","mimeType":"image/png"}
curl -s "https://iconape.com/wp-content/png_logo_vector/webcomponents-org-logo.png"
```

## No gaps between Docs, Editor, & Terminal

```sh {"id":"01HMEBG1F55H9E2X46RDNFMKAC","interactive":"true","terminalRows":"6"}
export PROJECT_NAME=Enter your project id
echo "PROJECT_NAME set to $PROJECT_NAME"
gcloud config set project $PROJECT_NAME

export CLUSTER_ZONE="europe-central2-a"
echo "CLUSTER_ZONE set to $CLUSTER_ZONE"
```

Set the project credentials of your Kubernetes cluster

```sh {"id":"01HMEBG1F55H9E2X46RM0J0DGQ","promptEnv":"auto"}
export CLUSTER_NAME=Enter your cluster
gcloud container clusters get-credentials $CLUSTER_NAME --zone $CLUSTER_ZONE --project $PROJECT_NAME
```

## Apply app manifest

Install Emojivoto into the `emojivoto` namespace by running:

```sh {"background":"true","id":"01HR5RCPN6GMXPSQQ3RREC7H3G","name":"tail-emojivoto","terminalRows":"15"}
kubectl get pods -n emojivoto -w
```

```bash {"id":"01HR53VC0NT8SQZD6HXSZFDSA4","name":"install-emojivoto"}
kubectl apply -f emojivoto.yaml
```

## Next up

Hop over to [Cloud-native notebooks](cloud.md).
