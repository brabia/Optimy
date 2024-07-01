# OUTPUT
output "aws_instance_public_dns" {
	value = aws_instance.optimy_ec2.public_dns
}