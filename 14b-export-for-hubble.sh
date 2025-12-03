
# docs - https://docs.cilium.io/en/stable/observability/hubble/configuration/export/
#will enable export for hubble lite

helm upgrade cilium isovalent/cilium \
  --version 1.18.4 \
  --namespace kube-system \
  --reuse-values \
  --set hubble.enabled=true \
  --set hubble.export.static.enabled=true \
  --set hubble.export.static.filePath=/var/run/cilium/hubble/hubble.log

#  --set hubble.export.static.filePath=/var/run/cilium/hubble/events.log
# restarting all ds
kubectl rollout restart daemonset hubble-enterprise -n kube-system
kubectl rollout restart daemonset cilium -n kube-system
kubectl rollout restart daemonset cilium-dnsproxy -n kube-system
kubectl rollout restart daemonset cilium-envoy -n kube-system
kubectl rollout restart daemonset tetragon -n tetragon