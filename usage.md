# socat

Access internal resources through Kubernetes port-forwarding

```
module "rds-forwarder" {
  source = "https://github.com/opszero/terraform-kubernetes-socat"

  name = "rds-forwarder"
  host = "rds-endpoint.aws.com"
  container_port = 5432
}

```

```
kubectl port-forward deployments/rds-forwader 5431:5432
```
