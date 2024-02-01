variable "instance_names" {
  type = map
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"    # just reducing instances to avoid time
  }
}

variable "zone_id" {
  default = "Z062815430DMB9RUXA69R"
}

variable "domain_name" {
  default = "daws76s.online"
}