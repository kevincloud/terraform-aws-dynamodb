variable "identifier" { }
variable "key_setup" {
    type = map(object({
        keyname = string
        keydata = string
    }))
    default = {
        hashkey = {
            keyname = "MyHash"
            keydata = "S"
        }
        rangekey = {
            keyname = "MyRange"
            keydata = "S"
        }
    }
}
variable "tags" { 
    type = map(string)
}
