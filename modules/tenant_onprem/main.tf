variable "name" {}
variable "location" {}

resource "null_resource" "tenant" {
  triggers = {
    value = var.environment.name
  }

  provisioner "local-exec" {
    command = <<EOT
      echo "Create tenant ${var.environment.name}"
    EOT
  }
}
