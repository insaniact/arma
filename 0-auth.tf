terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.80.0"
    }
  }
}

#Japan uses tokyo Region / SysLog must be stored in Japan / Set tokyo as the default region no need for alias
provider "aws" {
  /*alias = "tokyo"*/
  region = "ap-northeast-1"
}