variable "architecture_type_map" {
  type = map(any)
  default = {
    "HA"     = ["us-east-1", "us-west-2"]
    "single" = ["us-east-1"]
  }
}

variable "architecture_type" {
  default = "HA"
}
