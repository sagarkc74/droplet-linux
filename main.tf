# Data source for our SSH key

data "digitalocean_ssh_key" "sagar-dokey" {
  name = "id_rsa.pub"
}

# Creating a Digital Ocean Droplet
resource "digitalocean_droplet" "sagar-droplet" {
  image    = var.image
  name     = var.droplet_name
  region   = var.droplet_region
  size     = var.image_size
  ssh_keys = [data.digitalocean_ssh_key.sagar-dokey.id]
}
