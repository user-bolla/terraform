variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z09862333DG9EIMMVCYEW"
}

variable "domain_name" {
    default = "userbolla.store"
} 