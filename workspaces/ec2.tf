resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #devops-practice
  instance_type = lookup(var.instance_type, terraform.workspace)
  subnet_id = "subnet-0285fed2480af3f37"
  tags = {
    Name = "HelloTerraform"
  }
}