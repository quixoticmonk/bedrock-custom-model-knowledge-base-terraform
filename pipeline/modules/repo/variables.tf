#This solution, non-production-ready template describes AWS Codepipeline based CICD Pipeline for terraform code deployment.
#© 2023 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
#This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
#http://aws.amazon.com/agreement or other written agreement between Customer and either
#Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

variable "provider_type" {
  type        = string
  description = "Name of the external provider you are connecting to"
}

variable "source_repo" {
  type        = string
  description = "Name of the repository you are connecting to"
}