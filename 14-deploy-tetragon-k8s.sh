helm upgrade --install tetragon isovalent/tetragon --version 1.18.0 \
  --namespace tetragon --create-namespace

  sleep 30

  # old version 1.17.0