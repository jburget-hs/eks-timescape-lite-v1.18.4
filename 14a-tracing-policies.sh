
# install tracing policies

helm upgrade -n tetragon tetragon --version 1.18.0 isovalent/tetragon --reuse-values --set tracingPolicies.default.enabled=true

#setting to show tetra model in the tetragon daemon set
helm upgrade -n tetragon tetragon --version 1.18.0 isovalent/tetragon --reuse-values --set tetragon.enableApplicationModel=true


kubectl get tracingpolicy