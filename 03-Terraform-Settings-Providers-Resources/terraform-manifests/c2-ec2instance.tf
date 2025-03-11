# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-023a307f3d27ea427"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
