module "redis" {
  source       = "../.."
  project      = var.project
  service_name = "test"
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "redis_user" {
  source       = "../../modules/user"
  project      = module.redis.project
  service_name = module.redis.service_name
  username     = "test"
}