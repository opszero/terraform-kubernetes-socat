resource "kubernetes_deployment_v1" "socat" {
  metadata {
    name = var.name
  }

  spec {
    replicas = 1

    template {
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
