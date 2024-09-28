variable "environment" {
  description = "Development"
  default     = "Development"
  type        = string
}

variable "region" {
  default     = "us-east-1"
  description = "Região default do AWS Academy"
}

variable "user-techuser" {
  default     = "techuser"
  description = "Usuário padrão"
}

variable "secrets-name" {
  default = "lambda-auth-credentials"
}
