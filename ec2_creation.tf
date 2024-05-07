resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "allow_ssh"
    createdby="k harikrishna"
  }
    egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
    ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
}
resource "aws_instance" "example_server" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t2.micro"
}  
