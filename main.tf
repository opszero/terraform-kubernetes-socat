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
            "tcp-listen:5432,fork,reuseaddr",
            "tcp-connect:${var.host}:${var.container_port}"
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
