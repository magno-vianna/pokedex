resource "aws_dynamodb_table" "Pokemon" {
  name           = "Pokemon"
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
    name = "type"
    type = "S"
  }

  attribute {
    name = "weight"
    type = "S"
  }

  attribute {
    name = "attack"
    type = "N"
  }

  attribute {
    name = "defense"
    type = "N"
  }

  attribute {
    name = "speed"
    type = "N"
  }

  attribute {
    name = "hp"
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
    name               = "IndexType"
    hash_key           = "type"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["type"]
  }

  global_secondary_index {
    name               = "IndexWeight"
    hash_key           = "weight"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["weight"]
  }

  global_secondary_index {
    name               = "IndexAttack"
    hash_key           = "attack"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["attack"]
  }

  global_secondary_index {
    name               = "IndexDefense"
    hash_key           = "defense"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["defense"]
  }

  global_secondary_index {
    name               = "IndexSpeed"
    hash_key           = "speed"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["speed"]
  }

  global_secondary_index {
    name               = "IndexHp"
    hash_key           = "hp"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["hp"]
  }

  tags = {
    Name        = "Pokemon"
    Environment = "production"
  }
}