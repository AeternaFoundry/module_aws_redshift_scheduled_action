variable "redshift_scheduled_actions" {
  description = <<EOT
Map of redshift_scheduled_actions, attributes below
Required:
    - iam_role
    - name
    - schedule
    - target_action (block):
        - pause_cluster (optional, block):
            - cluster_identifier (required)
        - resize_cluster (optional, block):
            - classic (optional)
            - cluster_identifier (required)
            - cluster_type (optional)
            - node_type (optional)
            - number_of_nodes (optional)
        - resume_cluster (optional, block):
            - cluster_identifier (required)
Optional:
    - description
    - enable
    - end_time
    - region
    - start_time
EOT

  type = map(object({
    iam_role    = string
    name        = string
    schedule    = string
    description = optional(string)
    enable      = optional(bool)
    end_time    = optional(string)
    region      = optional(string)
    start_time  = optional(string)
    target_action = object({
      pause_cluster = optional(object({
        cluster_identifier = string
      }))
      resize_cluster = optional(object({
        classic            = optional(bool)
        cluster_identifier = string
        cluster_type       = optional(string)
        node_type          = optional(string)
        number_of_nodes    = optional(number)
      }))
      resume_cluster = optional(object({
        cluster_identifier = string
      }))
    })
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

