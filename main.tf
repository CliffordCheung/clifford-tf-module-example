module "app_topics" {
 source      = "./modules/app_topics"
 name_prefix = "clifford"
 cart_count = 1
}

module "app_topics_john" {
    source = "./modules/app_topics"
    name_prefix = "john"
    cart_count = 1
}
output "aws_sns_topic" {
    value = module.app_topics.cart_topic_arns[*]
}