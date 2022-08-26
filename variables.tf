variable "name" {
  type        = string
  description = "Name of the deployment"
}


variable "destination_host" {
  type        = string
  description = "Host name to route requests to."
}

variable "destination_port" {
  description = "Port to listen to on the container"
}


variable "container_port" {
  description = "Port to listen to on the container"
}
