terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "docker_container" "fastapi_crud" {
    image = "fastapi-crud:dev"
    name = "fastapi-crud"
    restart = "always"
    volumes {
        container_path = "/fastapi-crud"
        host_path = "path"
        read_only = false
    }
    ports {
        internal = 80
        external = 8060
    }
  
}