provider "aws" {

  region  = "${var.aws_region}"
  shared_credentials_file = "${vars.aws_credentials_path}"
  profile = "${var.aws_profile}"
}