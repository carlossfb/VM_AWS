# ssh-keygen -f aws-key
resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-0ab1a82de7ca5889c" # us-west-2
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = "subnet-0b5ec4ada43518af2"
  vpc_security_group_ids      = ["sg-047032efcd503d57b"]
  associate_public_ip_address = true
  tags = {
    Name = "vm-terraform"
  }
}