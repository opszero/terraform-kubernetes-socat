resource "kubernetes_deployment_v1" "socat" {
  metadata {
    name = var.name

    labels = {
      name = var.name
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        name = var.name
      }
    }

    template {
      metadata {
        labels = {
          name = var.name
        }
      }

      spec {
        container {
          image = "alpine/socat"
          name  = "socat"

          args = [
            "tcp-listen:${var.container_port},fork,reuseaddr",
            "tcp-connect:${var.destination_host}:${var.destination_port}"
          ]

          port {
            container_port = var.container_port
            protocol       = "TCP"
          }
        }
      }
    }
  }
}
