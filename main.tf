locals {
  bin_dir = module.setup_clis.bin_dir
}

module setup_clis {
  source = "github.com/cloud-native-toolkit/terraform-util-clis.git"

  clis = ["helm"]
}

resource null_resource install_cronjob {
  depends_on = [module.setup_clis]

  provisioner "local-exec" {
    command = "${local.bin_dir}/helm template --namespace ${var.namespace} console-link-job ${path.module}/chart/console-link-job | kubectl apply -n ${var.namespace} -f -"

    environment = {
      KUBECONFIG = var.cluster_config_file
    }
  }
}
