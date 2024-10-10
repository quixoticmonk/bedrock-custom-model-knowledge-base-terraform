<!-- BEGIN_TF_DOCS -->
# Customer Bedrock model deployment

![](./images/ML-Model-Deployment-Page-2.drawio.png)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.48 |
| <a name="requirement_awscc"></a> [awscc](#requirement\_awscc) | ~> 1.0 |
| <a name="requirement_opensearch"></a> [opensearch](#requirement\_opensearch) | = 2.2.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.48 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_action_group_lambda"></a> [action\_group\_lambda](#module\_action\_group\_lambda) | ./modules/lambda | n/a |
| <a name="module_bedrock-agent"></a> [bedrock-agent](#module\_bedrock-agent) | ./modules/bedrock-agent | n/a |
| <a name="module_custom-model-generation"></a> [custom-model-generation](#module\_custom-model-generation) | ./modules/custom-model | n/a |
| <a name="module_custom_model_bucket"></a> [custom\_model\_bucket](#module\_custom\_model\_bucket) | ./modules/s3 | n/a |
| <a name="module_guardrails"></a> [guardrails](#module\_guardrails) | ./modules/guardrails | n/a |
| <a name="module_sample_iam"></a> [sample\_iam](#module\_sample\_iam) | ./modules/iam | n/a |
| <a name="module_knowledge-base"></a> [knowledge-base](#module\_knowledge-base) | ./modules/knowledge-base | n/a |
| <a name="module_opensearch"></a> [opensearch](#module\_opensearch) | ./modules/opensearch | n/a |
| <a name="module_s3_bucket"></a> [s3\_bucket](#module\_s3\_bucket) | ./modules/s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [terraform_data.sample_asst_prepare](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |
| [time_sleep.delay](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [aws_bedrock_foundation_model.kb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/bedrock_foundation_model) | data source |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy.lambda_basic_execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_partition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | The list of security group IDs to be associated with the Lambda function. | `list(string)` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The list of subnet IDs where the Lambda function will be deployed. | `list(string)` | n/a | yes |
| <a name="input_action_group_desc"></a> [action\_group\_desc](#input\_action\_group\_desc) | The description of the action group. | `string` | `"An action group that provides hashicorp information."` | no |
| <a name="input_action_group_name"></a> [action\_group\_name](#input\_action\_group\_name) | The name of the action group. | `string` | `"hashicorpAPI"` | no |
| <a name="input_agent_desc"></a> [agent\_desc](#input\_agent\_desc) | The description of the agent. | `string` | `"An assistant that provides hashicorp information."` | no |
| <a name="input_agent_model_id"></a> [agent\_model\_id](#input\_agent\_model\_id) | The ID of the foundational model used by the agent. | `string` | `"anthropic.claude-3-haiku-20240307-v1:0"` | no |
| <a name="input_agent_name"></a> [agent\_name](#input\_agent\_name) | The name of the agent. | `string` | `"sampleAssistant"` | no |
| <a name="input_kb_model_id"></a> [kb\_model\_id](#input\_kb\_model\_id) | The ID of the foundational model used by the knowledge base. | `string` | `"amazon.titan-embed-text-v1"` | no |
| <a name="input_kb_name"></a> [kb\_name](#input\_kb\_name) | The name of the knowledge base. | `string` | `"sample"` | no |
| <a name="input_kb_oss_collection_name"></a> [kb\_oss\_collection\_name](#input\_kb\_oss\_collection\_name) | The name of the OpenSearch Service (OSS) collection for the knowledge base. | `string` | `"bedrock-sample-kb"` | no |
| <a name="input_kb_s3_bucket_name_prefix"></a> [kb\_s3\_bucket\_name\_prefix](#input\_kb\_s3\_bucket\_name\_prefix) | The name prefix of the S3 bucket for the data source of the knowledge base. | `string` | `"sample-kb"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->