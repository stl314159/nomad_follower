job "random-logger-example" {
  datacenters = ["dc1"]
  type        = "service"

  group "random" {
    count = 1

    task "random-json" {
      driver = "docker"
      config {
        image = "sikwan/random-json-logger:latest"
      }
      service {
        tags = [
          "logging",
        ]
      }
    }
    task "random-txt" {
      driver = "docker"
      config {
        image = "chentex/random-logger"
      }
      service {
        tags = [
          "logging",
        ]
      }
    }

  }
}

