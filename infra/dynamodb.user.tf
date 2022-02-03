resource "aws_dynamodb_table" "User-fan" {
  name           = "User-fan"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "name"
    type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }

  attribute {
    name = "password"
    type = "S"
  }

  attribute {
    name = "cpf"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "IndexId"
    hash_key           = "id"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["id"]
  }

  global_secondary_index {
    name               = "IndexName"
    hash_key           = "name"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["name"]
  }

  global_secondary_index {
    name               = "IndexCpf"
    hash_key           = "cpf"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["cpf"]
  }

  global_secondary_index {
    name               = "IndexEmail"
    hash_key           = "email"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["email"]
  }

  global_secondary_index {
    name               = "IndexPassword"
    hash_key           = "password"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["password"]
  }

  tags = {
    Name        = "User-fan"
    Environment = "production"
  }
}