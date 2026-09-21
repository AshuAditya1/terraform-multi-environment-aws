# outputs.tf

output "instance_public_ips" {
  description = "Public IP addresses of the EC2 instances"
  value       = aws_instance.app[*].public_ip
}
