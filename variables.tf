# Removed Azure-specific variables

variable "encryption_key" {
  type        = string
  description = "Encryption key for sensitive data"
}

variable "tags" {
  description = "A mapping of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

# You can add any other variables here that might be needed for your local configuration
