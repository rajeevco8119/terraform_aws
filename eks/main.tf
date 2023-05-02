provider "aws" {
  
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key

}

resource "aws_eks_cluster" "cluster" {
  name = "whiz"
  role_arn = "arn:aws:iam::571663587379:role/task98_role_35569.42382987"

    vpc_config {
      subnet_ids = ["subnet-849e86c9","subnet-81bbeede"]
    }
}




#arn:aws:iam::571663587379:role/task98_role_35569.42382987
# subnet-849e86c9
# subnet-81bbeede