<!-- BEGIN_TF_DOCS -->
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
## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | The port to route requests to. | `string` | n/a | yes |
| <a name="input_host"></a> [host](#input\_host) | The host name to route requests to. | `string` | n/a | yes |
## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment_v1.socat](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment_v1) | resource |
## Outputs

No outputs.
<!-- END_TF_DOCS -->