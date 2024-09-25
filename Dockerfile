# Base image with kubectl and wget
FROM cgr.dev/chainguard/kubectl:latest-dev AS base

# Install cnpg plugin using wget script
USER root
RUN wget -qO- https://github.com/cloudnative-pg/cloudnative-pg/raw/main/hack/install-cnpg-plugin.sh | sh -s -- -b /usr/bin

# Minimal image with only kubectl and cnpg
FROM gcr.io/distroless/static:nonroot

COPY --from=base /usr/bin/kubectl /usr/local/bin/kubectl
COPY --from=base /usr/bin/kubectl-cnpg /usr/local/bin/kubectl-cnpg

ENTRYPOINT ["kubectl"]
