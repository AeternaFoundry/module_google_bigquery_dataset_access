resource "google_bigquery_dataset_access" "bigquery_dataset_accesses" {
  for_each = var.bigquery_dataset_accesses

  dataset_id      = each.value.dataset_id
  deletion_policy = each.value.deletion_policy
  domain          = each.value.domain
  group_by_email  = each.value.group_by_email
  iam_member      = each.value.iam_member
  project         = each.value.project
  role            = each.value.role
  special_group   = each.value.special_group
  user_by_email   = each.value.user_by_email

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      location    = condition.value.location
      title       = condition.value.title
    }
  }

  dynamic "dataset" {
    for_each = each.value.dataset != null ? [each.value.dataset] : []
    content {
      dataset {
        dataset_id = dataset.value.dataset.dataset_id
        project_id = dataset.value.dataset.project_id
      }
      target_types = dataset.value.target_types
    }
  }

  dynamic "routine" {
    for_each = each.value.routine != null ? [each.value.routine] : []
    content {
      dataset_id = routine.value.dataset_id
      project_id = routine.value.project_id
      routine_id = routine.value.routine_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "view" {
    for_each = each.value.view != null ? [each.value.view] : []
    content {
      dataset_id = view.value.dataset_id
      project_id = view.value.project_id
      table_id   = view.value.table_id
    }
  }
}

