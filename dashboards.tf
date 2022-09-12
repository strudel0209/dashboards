resource "grafana_dashboard" "testing-dashboards" {
   provider = grafana.cloud

   for_each    = fileset("${path.module}/testing", "*.json")
   #for_each    = fileset("","${path.module}/testing/*.json")
   config_json = file("${path.module}/testing/${each.key}")
   folder      = grafana_folder.testing2.id
}
