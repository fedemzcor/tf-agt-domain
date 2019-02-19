variable "aws_region" {
    type = "string"
    default = "us-east-1"
}

variable "aws_profile" {
    type = "string"
    default = "terraform"
}

variable "aws_credentials_path" {
    type    = "string"
    default = "~/.aws/credentials"
}


variable "domain_name" {
    type = "string"
    
}
variable "certificate_arn" {
    type = "string"
}

variable "zone_id"  {
    type = "string"
}

variable "agtw_id" {
    type = "string"
}

variable "agtw_stage_name" {
    type = "string"
}

