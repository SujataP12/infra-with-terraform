variable "credentials_file_path" {
    description = "Path to the GCP credentials JSON file"
    type        = string
    default     = "/home/sujata/Documents/GCP"
  
}

provider "google" {
    project = "devops-470615"
    region  = "asia-southeast1"
    credentials = file("${var.credentials_file_path}/secret.json")
}