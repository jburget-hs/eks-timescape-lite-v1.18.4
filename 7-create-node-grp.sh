
cat > nodegroup.yaml <<EOF
apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig
metadata:
  name: ${CLUSTER_NAME}
  region: ${REGION}

managedNodeGroups:
- name: standard
  instanceType: m5.large
  desiredCapacity: 2
  privateNetworking: true
EOF



eksctl create nodegroup -f nodegroup.yaml
