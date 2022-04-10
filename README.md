# Perfana deployment example on K8S

To facilitate and ease the deployment, you can use
 `helmfile`: https://github.com/roboll/helmfile

Then 

###Change the secrets in the example secret files!
And then, for a quick install, run:

```
kubectl apply -f namespace.yaml 
```

```
for i in **/secret*.yaml **/dashboard*.yml; do kubectl apply -f $i --namespace perfana; done
```

After that, you can run:

```
helmfile --namespace perfana apply
```