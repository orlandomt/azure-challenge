module "app_service" {
  source              = "../modules/app-service"
  environment         = var.environment
  rg_location         = var.rg_location
  sku_name            = var.sku_name
  app_svc_plan_name   = var.app_svc_plan_name
  app_svc_plan_size   = var.app_svc_plan_size
  backoffice_app_name = var.backoffice_app_name
  merchant_app_name   = var.merchant_app_name
  payment_app_name    = var.payment_app_name
}