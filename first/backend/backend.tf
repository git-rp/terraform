terraform {
  backend "s3" {
    key    = "terraform/tfstate.tfstate"
    bucket = "terraf-bucket"
    region = "us-east-1"
  }
}
