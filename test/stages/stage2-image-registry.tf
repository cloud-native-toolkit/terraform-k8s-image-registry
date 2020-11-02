module "dev_tools_image-registry" {
  source = "./module"

  config_file_path = module.dev_cluster.config_file_path
  registry_namespace = "ibmgaragecloud"
  registry_host = "docker.io"
  registry_url = "https://hub.docker.com/o/ibmgaragecloud"
  registry_user = "me"
  registry_password = "password"
  cluster_namespace = module.dev_capture_tools_state.namespace
}
