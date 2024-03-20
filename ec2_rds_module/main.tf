

provider "aws" {
  region = var.region

}

resource "aws_db_instance" "education" {
  identifier             = "education"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "16.2"
  username               = "education_terr"
  password               = "education123"
  publicly_accessible    = true
  skip_final_snapshot    = true
}
