
output "namespace" {
  value = var.namespace
  depends_on = [null_resource.install_cronjob]
}
