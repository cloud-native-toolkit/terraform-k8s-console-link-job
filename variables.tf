variable "namespace" {
  type        = string
  description = "The namespace where the console link should be deployed"
}

variable "cluster_config_file" {
  type        = string
  description = "Config file for Kubernetes cluster."
}
