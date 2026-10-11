variable "bigquery_dataset_accesses" {
  description = <<EOT
Map of bigquery_dataset_accesses, attributes below
Required:
    - dataset_id
Optional:
    - deletion_policy
    - domain
    - group_by_email
    - iam_member
    - project
    - role
    - special_group
    - user_by_email
    - condition (block):
        - description (optional)
        - expression (required)
        - location (optional)
        - title (optional)
    - dataset (block):
        - dataset (required, block):
            - dataset_id (required)
            - project_id (required)
        - target_types (required)
    - routine (block):
        - dataset_id (required)
        - project_id (required)
        - routine_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - view (block):
        - dataset_id (required)
        - project_id (required)
        - table_id (required)
EOT

  type = map(object({
    dataset_id      = string
    deletion_policy = optional(string)
    domain          = optional(string)
    group_by_email  = optional(string)
    iam_member      = optional(string)
    project         = optional(string)
    role            = optional(string)
    special_group   = optional(string)
    user_by_email   = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      location    = optional(string)
      title       = optional(string)
    }))
    dataset = optional(object({
      dataset = object({
        dataset_id = string
        project_id = string
      })
      target_types = list(string)
    }))
    routine = optional(object({
      dataset_id = string
      project_id = string
      routine_id = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    view = optional(object({
      dataset_id = string
      project_id = string
      table_id   = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

