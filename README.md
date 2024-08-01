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
# 🚀 Built by opsZero!

<a href="https://opszero.com"><img src="https://opszero.com/wp-content/uploads/2024/07/opsZero_logo_svg.svg" width="300px"/></a>

Since 2016 [opsZero](https://opszero.com) has been providing Kubernetes
expertise to companies of all sizes on any Cloud. With a focus on AI and
Compliance we can say we seen it all whether SOC2, HIPAA, PCI-DSS, ITAR,
FedRAMP, CMMC we have you and your customers covered.

We provide support to organizations in the following ways:

- [Modernize or Migrate to Kubernetes](https://opszero.com/solutions/modernization/)
- [Cloud Infrastructure with Kubernetes on AWS, Azure, Google Cloud, or Bare Metal](https://opszero.com/solutions/cloud-infrastructure/)
- [Building AI and Data Pipelines on Kubernetes](https://opszero.com/solutions/ai/)
- [Optimizing Existing Kubernetes Workloads](https://opszero.com/solutions/optimized-workloads/)

We do this with a high-touch support model where you:

- Get access to us on Slack, Microsoft Teams or Email
- Get 24/7 coverage of your infrastructure
- Get an accelerated migration to Kubernetes

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.

<br/><br/>

<div style="display: block">
  <img src="https://opszero.com/wp-content/uploads/2024/07/aws-advanced.png" width="150px" />
  <img src="https://opszero.com/wp-content/uploads/2024/07/AWS-public-sector.png" width="150px" />
  <img src="https://opszero.com/wp-content/uploads/2024/07/AWS-eks.png" width="150px" />
</div>
<!-- END_TF_DOCS -->