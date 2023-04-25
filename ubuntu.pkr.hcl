source "amazon-ebs" "gmi" {
  region        = "us-east-1"
  source_ami    = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  ssh_username  = "ubuntu"
  ami_name      = "glarimy-ami-{{timestamp}}"
}

build {
  sources = [
    "source.amazon-ebs.gmi"
  ]
}