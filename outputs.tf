output "bigquery_dataset_accesses_id" {
  description = "Map of id values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no id are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_dataset_accesses_api_updated_member" {
  description = "Map of api_updated_member values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no api_updated_member are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.api_updated_member if v.api_updated_member != null }
}
output "bigquery_dataset_accesses_condition" {
  description = "Map of condition values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no condition are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "bigquery_dataset_accesses_dataset" {
  description = "Map of dataset values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no dataset are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => one(v.dataset) if v.dataset != null && length(v.dataset) > 0 }
}
output "bigquery_dataset_accesses_dataset_id" {
  description = "Map of dataset_id values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no dataset_id are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.dataset_id if v.dataset_id != null && length(v.dataset_id) > 0 }
}
output "bigquery_dataset_accesses_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_dataset_accesses_domain" {
  description = "Map of domain values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no domain are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "bigquery_dataset_accesses_group_by_email" {
  description = "Map of group_by_email values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no group_by_email are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.group_by_email if v.group_by_email != null && length(v.group_by_email) > 0 }
}
output "bigquery_dataset_accesses_iam_member" {
  description = "Map of iam_member values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no iam_member are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.iam_member if v.iam_member != null && length(v.iam_member) > 0 }
}
output "bigquery_dataset_accesses_project" {
  description = "Map of project values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no project are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_dataset_accesses_role" {
  description = "Map of role values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no role are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.role if v.role != null && length(v.role) > 0 }
}
output "bigquery_dataset_accesses_routine" {
  description = "Map of routine values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no routine are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => one(v.routine) if v.routine != null && length(v.routine) > 0 }
}
output "bigquery_dataset_accesses_special_group" {
  description = "Map of special_group values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no special_group are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.special_group if v.special_group != null && length(v.special_group) > 0 }
}
output "bigquery_dataset_accesses_user_by_email" {
  description = "Map of user_by_email values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no user_by_email are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => v.user_by_email if v.user_by_email != null && length(v.user_by_email) > 0 }
}
output "bigquery_dataset_accesses_view" {
  description = "Map of view values across all bigquery_dataset_accesses, keyed the same as var.bigquery_dataset_accesses except keys with no view are omitted"
  value       = { for k, v in google_bigquery_dataset_access.bigquery_dataset_accesses : k => one(v.view) if v.view != null && length(v.view) > 0 }
}

