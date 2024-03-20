
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
  access_key = "AKIA47CRXYGTCRC7SXCK"
  secret_key = "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"
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
