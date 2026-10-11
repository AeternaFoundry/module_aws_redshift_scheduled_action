resource "aws_redshift_scheduled_action" "redshift_scheduled_actions" {
  for_each = var.redshift_scheduled_actions

  iam_role    = each.value.iam_role
  name        = each.value.name
  schedule    = each.value.schedule
  description = each.value.description
  enable      = each.value.enable
  end_time    = each.value.end_time
  region      = each.value.region
  start_time  = each.value.start_time

  target_action {
    dynamic "pause_cluster" {
      for_each = each.value.target_action.pause_cluster != null ? [each.value.target_action.pause_cluster] : []
      content {
        cluster_identifier = pause_cluster.value.cluster_identifier
      }
    }
    dynamic "resize_cluster" {
      for_each = each.value.target_action.resize_cluster != null ? [each.value.target_action.resize_cluster] : []
      content {
        classic            = resize_cluster.value.classic
        cluster_identifier = resize_cluster.value.cluster_identifier
        cluster_type       = resize_cluster.value.cluster_type
        node_type          = resize_cluster.value.node_type
        number_of_nodes    = resize_cluster.value.number_of_nodes
      }
    }
    dynamic "resume_cluster" {
      for_each = each.value.target_action.resume_cluster != null ? [each.value.target_action.resume_cluster] : []
      content {
        cluster_identifier = resume_cluster.value.cluster_identifier
      }
    }
  }
}

