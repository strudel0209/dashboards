terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.24.0"
    }
  }
}

// Declaring the first provider to be only used for creating the cloud-stack
provider "grafana" {
  alias = "cloud"
  url = "https://alexandrasachelarescu2.grafana.net"
  auth = "eyJrIjoiUDQ3MFEwRzYwQkZGemIwZUtuRzhrZnlXTmhoeDNkWjUiLCJuIjoidGVycmFmb3JtIiwiaWQiOjF9"
}
