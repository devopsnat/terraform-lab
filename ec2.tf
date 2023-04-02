resource "aws_instance" "demo1" {
  ami           = var.ami-type
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.sg1.id]
  user_data     = file("${path.module}/postgresql.sh")
  key_name      = "study-sesh"
  tags = {
    "Name" = var.instance-name
    "env"  = var.env
    "team" = var.team

  }
}
