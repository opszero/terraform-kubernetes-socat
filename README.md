<!-- BEGIN_TF_DOCS -->
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
# Pro Support

<a href="https://www.opszero.com"><img src="https://assets.opszero.com/images/opszero_11_29_2016.png" width="300px"/></a>

[opsZero provides support](https://www.opszero.com/devops) for our modules including:

- Email support
- Zoom Calls
- Implementation Guidance
## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Port to listen to on the container | `any` | n/a | yes |
| <a name="input_destination_host"></a> [destination\_host](#input\_destination\_host) | Host name to route requests to. | `string` | n/a | yes |
| <a name="input_destination_port"></a> [destination\_port](#input\_destination\_port) | Port to listen to on the container | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the deployment | `string` | n/a | yes |
## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment_v1.socat](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment_v1) | resource |
## Outputs

No outputs.
<!-- END_TF_DOCS -->