resource "aws_instance" "web" {
  for_each = var.instance_names
  ami           = data.aws_ami.centos8.id
  subnet_id = "subnet-0285fed2480af3f37"
  instance_type = each.value
  tags = {
    Name = each.key
  }
}


resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip ]
}