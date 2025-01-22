module "app_topics" {
 source      = "./modules/app_topics"
 name_prefix = "clifford"
 cart_count = 3
}
output "aws_sns_topic" {
    value = module.app_topics.cart_topic_arns[*]
}