set -e

helm template . -f tests/values.yaml > template.yaml
cat template.yaml | kubetest -t tests --verbose
