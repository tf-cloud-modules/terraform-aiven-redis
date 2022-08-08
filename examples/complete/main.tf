provider "aiven" {
}

module "redis" {
  source       = "../.."
  project      = var.project
  service_name = var.service_name
}

module "redis_user" {
  source       = "../../modules/user"
  password     = var.password
  project      = module.redis.project
  service_name = module.redis.service_name
  username     = var.username
}