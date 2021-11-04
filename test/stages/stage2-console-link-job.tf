module "console-link-job" {
  source = "./module"

  namespace = module.dev_capture_tools_state.namespace
  cluster_config_file = module.dev_cluster.config_file_path
}
