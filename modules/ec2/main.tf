resource "aws_instance" "jenkins_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_ids[0]]

  tags = {
    Name = "Jenkins Server"
  }
}

resource "aws_instance" "app_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_ids[1]]

  tags = {
    Name = "Application Server"
  }
}
