resource "oci_disaster_recovery_dr_plan" "disaster_recovery_dr_plans" {
  for_each = var.disaster_recovery_dr_plans

  display_name           = each.value.display_name
  dr_protection_group_id = each.value.dr_protection_group_id
  type                   = each.value.type
  defined_tags           = each.value.defined_tags
  freeform_tags          = each.value.freeform_tags
  refresh_trigger        = each.value.refresh_trigger
  source_plan_id         = each.value.source_plan_id
  verify_trigger         = each.value.verify_trigger

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

