### 手作業でデプロイしているもの
- cilium
ref)https://docs.cilium.io/en/v1.13/configuration/argocd-issues/
```
helm install cilium cilium/cilium --version 1.13.3 \
  --namespace kube-system \
  --set prometheus.enabled=true \
  --set operator.prometheus.enabled=true \
  --set hubble.enabled=true \
  --set hubble.metrics.enableOpenMetrics=true \
  --set hubble.metrics.enabled="{dns,drop,tcp,flow,port-distribution,icmp,httpV2:exemplars=true;labelsContext=source_ip\,source_namespace\,source_workload\,destination_ip\,destination_namespace\,destination_workload\,traffic_direction}"
```
- datadogのsecret
```
kubectl create secret generic datadog-secret --from-literal api-key=$DATADOG_API_KEY --from-literal app-key=$DATADOG_APP_KEY
```
- cloudflared