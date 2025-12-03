helm upgrade -i cilium-dnsproxy isovalent/cilium-dnsproxy --version 1.18.4 -n kube-system -f cilium-dns-proxy-ha-values.yaml

# old version 1.17.7