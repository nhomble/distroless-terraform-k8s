FROM gcr.io/distroless/base-debian11

COPY --from=hashicorp/terraform-k8s:1.1.0 /bin/terraform-k8s /bin/terraform-k8s
USER nobody:nobody

ENTRYPOINT ["/bin/terraform-k8s"]
