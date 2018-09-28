# Kubernetes helm Talk
This is a small demo showing how [Helm](https://helm.sh/) can be used to simplify Kubernetes deployment process.
You can read more about it in this [post](https://blog.solutotlv.com/deploying-kubernetes-like-a-pro/).

## Demo Structure
In this repo, you'll find 3 APIs: Harry (written using Elm), Ron (written using Lolcode) and Hermione (written using Dotnet core, because she's smart). 
Each one of this is APIs is containarized and ready to be deployed on Kubernetes.
This deployment is done using a single `values.yaml` file, without all the ugly and messy Kubernetes files.
If you take a look on them, you'll notice h=that these files are pretty similar.
By using these files, I can use a generic helm chart to deploy each one of these APIs.

## Running the demo
To run this demo (after installing Helm), first add the sample chart repository:
```
helm repo add helm-talk https://omerlh.github.io/k8s-helm-talk
```
Than, run:
```
helm upgrade --install harry-server helm-talk/web-api -f harry-server/values.yaml
helm upgrade --install ron-server helm-talk/web-api -f ron-server/values.yaml
helm upgrade --install hermione-server helm-talk/web-api -f hermione-server/values.yaml
```
Now you have all the 3 APIs running on your local cluster. You can view them on the cluster, or access them via the ingress.
