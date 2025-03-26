output "jenkins_sg_id" {
  value = aws_security_group.jenkins_sg.id
}

output "app_sg_id" {
  value = aws_security_group.app_sg.id
}
