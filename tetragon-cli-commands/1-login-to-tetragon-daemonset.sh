#loging into the tertagon daemonset agent running on host"

kubectl exec -it ds/tetragon -c tetragon -n tetragon -- /bin/bash

