# Perfana deployment example on K8S

To facilitate and ease the deployment, you can use
 `helmfile`: https://github.com/roboll/helmfile

Then 

**Change the secrets in the example secret files!**

and

**Review all config instances that contain `${PERFANA_DOMAIN}` and ensure that the resulting urls match the values of your ingresses.**

Then:
### Install secrets
```bash
for i in **/secret*.yaml **/dashboard*.yml; do kubectl apply -f $i --namespace perfana; done
```
And finally:
### Deploy Perfana 
```bash
helmfile --namespace perfana apply
```