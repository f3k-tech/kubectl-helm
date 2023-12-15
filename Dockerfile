FROM bitnami/kubectl

USER root

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \
  && chmod 700 get_helm.sh \
  && ./get_helm.sh \
  && rm ./get_helm.sh

USER 1001
