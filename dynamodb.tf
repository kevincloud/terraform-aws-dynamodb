resource "aws_dynamodb_table" "item-data-table" {
    name = "standard-ddb-${var.identifier}"
    billing_mode = "PROVISIONED"
    read_capacity = 20
    write_capacity = 20
    hash_key = var.key_setup.hashkey.keyname
    range_key = var.key_setup.rangekey.keyname
    
    attribute {
        name = var.key_setup.hashkey.keyname
        type = var.key_setup.hashkey.keydata
    }
    
    attribute {
        name = var.key_setup.rangekey.keyname
        type = var.key_setup.rangekey.keydata
    }
    
    server_side_encryption {
        enabled = false
    }
}
