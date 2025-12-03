

cat > cluster.yaml <<EOF
apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig
metadata:
  name: ${CLUSTER_NAME}
  region: ${REGION}
  version: "1.31"

iam:
  withOIDC: true

addonsConfig:
  disableDefaultAddons: true
addons:
 - name: coredns
EOF

eksctl create cluster -f cluster.yaml


