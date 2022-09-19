variable "project_id" {
  description = "The ID of an Google Project "
  type =string
  default = ""
}
variable "bucket" {
  description = "bucket for application "
  type =string
  default = ""
}
variable "port" {
  description = "port for Application."
  type =string
  default = "8080"
}
