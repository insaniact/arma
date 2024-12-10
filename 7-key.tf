resource "tls_private_key" "MyLinuxBox-tokyo" {
  #tokyo is the default region
  /*provider =  aws.tokyo*/
  algorithm = "RSA"
  rsa_bits  = 2048
}
data "tls_public_key" "MyLinuxBox-tokyo" {
  private_key_pem = tls_private_key.MyLinuxBox-tokyo
}

output "private_key-tokyo" {
  value     = tls_private_key.MyLinuxBox-tokyo
  sensitive = true
}

output "public_key-tokyo" {
  value = data.tls_public_key.MyLinuxBox-tokyo
}
