variable "disaster_recovery_dr_plans" {
  description = <<EOT
Map of disaster_recovery_dr_plans, attributes below
Required:
    - display_name
    - dr_protection_group_id
    - type
Optional:
    - defined_tags
    - freeform_tags
    - refresh_trigger
    - source_plan_id
    - verify_trigger
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name           = string
    dr_protection_group_id = string
    type                   = string
    defined_tags           = optional(map(string))
    freeform_tags          = optional(map(string))
    refresh_trigger        = optional(number)
    source_plan_id         = optional(string)
    verify_trigger         = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

