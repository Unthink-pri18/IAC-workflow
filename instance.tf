resource "aws_instance" "iac" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "priyashu-test"
  }
}