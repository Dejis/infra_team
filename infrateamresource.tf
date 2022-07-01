resource "kubernetes_namespace" "infrateam" {
  metadata {
    name = "infrateam-ns-by-tf"
  }
}

resource "kubernetes_deployment" "infrateam" {
  metadata {
    name = "terraform-infrateam"
    labels = {
      test = "MyinfrateamApp"
    }
    namespace = "infrateam-ns-by-tf"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "MyinfrateamApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyinfrateamApp"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "infrateam"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}