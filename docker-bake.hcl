group "default" {
  targets = ["build"]
}

target "defaults" {
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
  tags = ["quay.io/bitski/gettext"]
}

target "docker-metadata-action" {}

target "build" {
  inherits = [
    "defaults",
    "docker-metadata-action"
  ]
  context = "."
  dockerfile = "Dockerfile"
}
