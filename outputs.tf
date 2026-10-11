output "redshift_scheduled_actions_id" {
  description = "Map of id values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshift_scheduled_actions_description" {
  description = "Map of description values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "redshift_scheduled_actions_enable" {
  description = "Map of enable values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.enable if v.enable != null }
}
output "redshift_scheduled_actions_end_time" {
  description = "Map of end_time values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "redshift_scheduled_actions_iam_role" {
  description = "Map of iam_role values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.iam_role if v.iam_role != null && length(v.iam_role) > 0 }
}
output "redshift_scheduled_actions_name" {
  description = "Map of name values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redshift_scheduled_actions_region" {
  description = "Map of region values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "redshift_scheduled_actions_schedule" {
  description = "Map of schedule values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "redshift_scheduled_actions_start_time" {
  description = "Map of start_time values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "redshift_scheduled_actions_target_action" {
  description = "Map of target_action values across all redshift_scheduled_actions, keyed the same as var.redshift_scheduled_actions"
  value       = { for k, v in aws_redshift_scheduled_action.redshift_scheduled_actions : k => one(v.target_action) if v.target_action != null && length(v.target_action) > 0 }
}

