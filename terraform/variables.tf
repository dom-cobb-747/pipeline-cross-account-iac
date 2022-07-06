###################
# Variables
###################

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The region being deployed to, e.g. 'us-east-1'"
}
variable "role_to_assume" {
  type = string
  description = "Assumed role to access to another aws account (e.g. test, staging or prod)"
  default = ""
}

variable "api_auth" {
  type        = string
  default     = "CUSTOM"
  description = "The type of authorization used for the API Gateway method"
}

variable "lambda_timeout" {
  type        = number
  default     = 300
  description = "How long the operations are allowed to take before being considered to have failed."
}

variable "lambda_memory_size" {
  type        = number
  default     = 256
  description = "the amount of memory that can be used for the lambda"
}

variable "msk_cluster_arn" {
  type    = string
}

variable "vpc_subnet_id_1" {
  type    = string
  default = ""
}

variable "vpc_security_group_id_1" {
  type    = string
  default = ""
}

variable "vpc_security_group_id_2" {
  type    = string
  default = ""
}

variable "tableName" {
  type    = string
  default = "historyserver"
}


variable "vpc_subnet_id_2" {
  type = string
}

variable "state_bucket" {
    type = string
}