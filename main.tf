module "node" {
  source            = "github.com/insight-w3f/terraform-polkadot-gcp-node.git?ref=master"
  private_subnet_id = var.private_subnet_id
  public_subnet_id  = var.public_subnet_id
  security_group_id = var.security_group_id
  node_name         = var.node_name
  root_volume_size  = var.root_volume_size
  instance_type     = var.instance_type
  public_key_path   = var.public_key_path
  private_key_path  = var.private_key_path
  chain             = var.chain
  project           = var.project
  create            = true
  create_eip        = true
}

module "ansible" {
  source = "github.com/insight-infrastructure/terraform-aws-ansible-playbook.git?ref=v0.12.0"

  ip                     = module.node.public_ip
  user                   = var.ssh_user
  private_key_path       = var.private_key_path
  playbook_file_path     = "${path.module}/ansible/main.yml"
  requirements_file_path = "${path.module}/ansible/requirements.yml"
  forks                  = 1

  playbook_vars = {
    aws_access_key_id : aws_iam_access_key.sync.id,
    aws_secret_access_key : aws_iam_access_key.sync.secret,
    sync_bucket_uri : aws_s3_bucket.sync.id,
    region : var.region,
  }

  module_depends_on = module.node
}
