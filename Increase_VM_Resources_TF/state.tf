terraform {
  backend "local" {
    path = "/tmp/file.tfstate"
  }
}