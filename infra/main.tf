# Create ssh key in hcloud
resource "hcloud_ssh_key" "main" {
  name       = "ms-ssh-key"
  public_key = file("~/.ssh/hetzner/hetzner_cloud.pub")
  labels = {
    "env" : "dev"
  }
}

# Create a new server running debian
resource "hcloud_server" "node1" {
  depends_on  = [hcloud_ssh_key.main]
  name        = "vps1"
  image       = "ubuntu-24.04"
  location    = "nbg1"
  server_type = "cx22"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
  ssh_keys = [hcloud_ssh_key.main.name]
  labels = {
    "env" : "dev"
  }
  # user_data = ""
  # firewall_ids = [hcloud_firewall.myfirewall.id]
}

# Configure Firewall
# resource "hcloud_firewall" "myfirewall" {
#   name = "my-firewall"
#   rule {
#     direction = "in"
#     protocol  = "icmp"
#     source_ips = [
#       "0.0.0.0/0",
#       "::/0"
#     ]
#   }

#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port      = "80-85"
#     source_ips = [
#       "0.0.0.0/0",
#       "::/0"
#     ]
#   }

# }
