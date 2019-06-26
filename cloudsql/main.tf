variable "diskSize" {
  type        = number
  description = "The id of the machine image (AMI) to use for the server."
}

variable "in_name"{
type = string
}

variable "project_id" {
type= string
}

resource "google_sql_database_instance" {
	project = "${var.project_id}"
	name = var.in_name
	region = "europe-west2"
	database_version=  "POSTGRES_9_6"
	settings {
		tier = "db-custom-1-3840"
		disk_size = var.diskSize
  }
}
