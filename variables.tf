variable "user_uuid" {
  description = "uuid for s3"
  type        = string
  #default     = "e751386e-0f3a-4aa3-a22e-e4c9eb2815c5"

}
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string

  validation {
    condition = (
      length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63 &&
      can(regex("^[a-z0-9][a-z0-9-.]*[a-z0-9]$", var.bucket_name))
    )
    error_message = "The bucket name must be between 3 and 63 characters, start and end with a lowercase letter or number, and can contain only lowercase letters, numbers, hyphens, and dots."
  }
}