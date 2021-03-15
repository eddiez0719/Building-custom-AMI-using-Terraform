output "id" {
  value       = aws_vpc.default.id
  description = "VPC ID"
}

output "public_subnet_ids" {
  value       = aws_subnet.public.*.id
  description = "List of public subnet IDs"
}

output "private_subnet_ids" {
  value       = aws_subnet.private.*.id
  description = "List of private subnet IDs"
}

output "test_hostname" {
  value       = aws_instance.test.public_dns
  description = "Public DNS name for bastion instance"
}

output "test_security_group_id" {
  value       = aws_security_group.test.id
  description = "Security group ID tied to bastion instance"
}

output "test_network_interface_id" {
  value       = aws_instance.test.primary_network_interface_id
  description = "Elastic Network Interface (ENI) ID of the Bastion instance's primary network interface"
}

output "cidr_block" {
  value       = var.cidr_block
  description = "The CIDR block associated with the VPC"
}

output "nat_gateway_ips" {
  value       = aws_eip.nat.*.public_ip
  description = "List of Elastic IPs associated with NAT gateways"
}