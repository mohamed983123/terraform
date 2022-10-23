module "mynetwork" {
  source = "./Network"
  avzone_sb1 = var.avzone_sb11

avzone_sb2 = var.avzone_sb22

subnet3_cidr= var.subnet33_cidr
subnet4_cidr= var.subnet44_cidr
subnet1_cidr= var.subnet11_cidr
subnet2_cidr= var.subnet22_cidr


  
}



resource "aws_db_instance" "myrds" {
  allocated_storage    = 10
  db_name              = "myrds"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "morshed"
  password             = var.dbpassword
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  skip_final_snapshot  = true
  port                 = 30000
  vpc_security_group_ids = [module.mynetwork.privitesg]
  
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [module.mynetwork.sub4, module.mynetwork.sub2]

  tags = {
    Name = "My DB subnet group"
  }
}












variable "dbpassword" {
  type = string
}


resource "aws_elasticache_cluster" "mycash" {
  cluster_id           = "mycash"
  engine               = "redis"
  node_type            = "cache.t3.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}
















#export TF_VAR_dbpassword=






























