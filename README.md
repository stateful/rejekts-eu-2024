+++
[runme]
id = '01HS7BA9N3NY3M9P9GK50V2FT6'
version = 'v3'
+++

# Hi 👋 Rejekts

[![](https://badgen.net/badge/Run%20with/Runme/5B3ADF?icon=https://runme.dev/img/logo.svg)](https://runme.dev/api/runme?repository=git%40github.com%3Astateful%2Frejekts-eu-2024.git&fileToOpen=README.md&command=demo&cell=0)

This is an example powered by [Runme](https://runme.dev/).

If you would like to find out more about Project Owl 🦉, she is kind of nocturnal and lives [right here](https://github.com/stateful/runme/blob/main/internal/owl/README.md).

```python {"id":"01HS86N20MC53XVFSJWAN6S4F8","name":"escape-confluence"}
import time, sys
def escape_confluence():
    sys.stdout.write("Escape Confluence with… ")
    for i in range(3):
        sys.stdout.write("🥁"); sys.stdout.flush()
        time.sleep(1)
    print("\n\nMarkdown docs! Colocated with code 🎉")
escape_confluence()
```

# Running through the Demo

Once the steps below are complete, you can move onto
the [first step](docs/gapless.md).

## Installing Prerequisites

For this example, we will use the
[Google Cloud Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine).

If you are on Mac, you can install the required tools using brew.

```sh {"id":"01HMEBG1F55H9E2X46R47A8R7Q","name":"macos-deps"}
brew install google-cloud-sdk grpcurl
```

Once you have the Google Cloud command line tool installed, use it to install
**gke-gcloud-auth-plugin**, a Kubectl plugin that manages authentication between
the client and GKE.

```sh {"id":"01HMEBG1F55H9E2X46RB7K4TT1","name":"gcloud-deps"}
gcloud components install gke-gcloud-auth-plugin
```

Once the credential plugin is installed, you can authorize gcloud to access the
Cloud Platform with your Google user credentials, triggering a web-based
authorization flow.

```sh {"id":"01HMEBG1F55H9E2X46RD8RAVB7","name":"gcloud-login"}
gcloud auth login
```

```sh {"id":"01HR4WS98SM6SYM7W16N454E1X","name":"gcloud-login-app-default"}
gcloud auth application-default login
```

If you are running this demo locally, please proceed to the
[first step](docs/gapless.md).
