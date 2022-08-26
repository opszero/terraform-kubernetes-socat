# socat

Access internal resources through Kubernetes port-forwarding

```
module "rds-forwarder" {
  source = "github.com/opszero/terraform-kubernetes-socat"

  name = "rds-forwarder"
  destination_host = "opszero.askldjasdkl.us-east-1.rds.amazonaws.com"
  destination_port = 5432
  container_port = 5432
}

```

```
kubectl port-forward deployments/rds-forwader 5431:5432
```
