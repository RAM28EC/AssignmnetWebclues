resource "aws_instance" "ec2" {
  ami                    = "ami-0522ab6e1ddcc7055"
  instance_type          = "t2.small"
  key_name               = var.key-name
  subnet_id              = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  root_block_device {
    volume_size = 10
  }
  tags = {
    Name = var.instance-name
  }
}