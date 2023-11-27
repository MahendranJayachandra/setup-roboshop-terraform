module "create components" {
    for_each = var.components
    source = "https://github.com/MahendranJayachandra/module-app"
    name = each.key
}

variable components {
   default = {
    frontend = {},
    mongodb = {},
    redis = {},
    User = {},
    cart = {},
    catalogue = {},
    mysql = {},
    shipping = {},
    rabbitmq = {},
    payment = {},
    dispatch = {}
   }
} 