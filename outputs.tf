
output "namespace" {
  value = var.namespace
  description = "The namespace where the console link job has been deployed"
  depends_on = [null_resource.install_cronjob]
}
