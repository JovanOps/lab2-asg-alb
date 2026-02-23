output "alb_dns_name" {
  value       = aws_lb.web.dns_name
  description = "Public ALB DNS name"
}

output "alb_url" {
  value       = "http://${aws_lb.web.dns_name}"
  description = "Open this URL"
}
