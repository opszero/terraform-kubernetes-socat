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

On the command line:

```
kubectl port-forward deployments/rds-forwader 5431:5432
```

This will then route requests to:

```
psql -h 0.0.0.0 -p 5431 -U username -W databasename

```
