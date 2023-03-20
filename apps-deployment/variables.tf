variable "cluster" {
  default = "eks-cluster"
}

variable "app" {
  type        = string
  description = "Name of application"
  default     = "personalsite"
}

variable "region" {
  default = "us-west-1"
}

variable "docker-image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "folakunmi/personalsite"
}

variable "mysql-password" {
  type        = string
  description = "db password of the docker image to deploy"
  default     = "my_db_password"
}
