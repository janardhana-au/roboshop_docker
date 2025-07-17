output "named_instance_public_ips" {
  description = "Map of instance names to public IPs"
  value = aws_instance.ansible_servers.public_ip
}

