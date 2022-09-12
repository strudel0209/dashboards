resource "grafana_dashboard" "testing-dash" {
   provider = grafana.cloud

   for_each    = fileset("${path.module}/dashboards/testing", "*.json")
   config_json = file("${path.module}/dashboards/testing/${each.key}")
   folder      = grafana_folder.testing.id
}
