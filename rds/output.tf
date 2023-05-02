output "instance_id" {
  
  value = aws_instance.web-server.id
}

output "cluster_endpoint" {
  
  value = aws_rds_cluster.aurorards.endpoint
}