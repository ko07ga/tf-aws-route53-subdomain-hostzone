variable "subdomain_name" {
  description = "作成したいサブドメイン名"
  type        = string
  validation {
    condition     = length(var.subdomain_name) > 0
    error_message = "サブドメイン名は1文字以上必要です"
  }
}

variable "basedomain_name" {
  description = "サブドメインを作成する親ドメイン名"
  type        = string
  validation {
    condition     = length(var.basedomain_name) > 0
    error_message = "親ドメイン名は1文字委譲必要です"
  }
}
