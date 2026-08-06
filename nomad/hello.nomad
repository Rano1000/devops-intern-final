job "hello-devops" {
  datacenters = ["dc1"]

  type = "service"

  group "hello-group" {

    network {
      port "http" {
        static = 8080
      }
    }

    task "hello-container" {

      driver = "docker"

      config {
        image = "devops-hello:1.0"
      }

      resources {
        cpu    = 200
        memory = 128
      }
    }
  }
}
