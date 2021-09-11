resource "aws_dynamodb_table" "table" {
  name           = "${var.table}"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Author = "mlabouardy"
    Tool   = "Terraform"
  }
}
