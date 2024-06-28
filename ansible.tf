# ANSIBLE MASTER
resource "aws_instance" "ans_master" {
  ami           = "ami-08c191625cfb7ee61"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "butter"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  user_data = file("install_ansible.sh")
  private_ip = "10.0.1.10"  


  tags = {
    Name = "Ansible Master"
  }
}

# ANSIBLE NODE
resource "aws_instance" "ans_n1" {
  ami           = "ami-08c191625cfb7ee61"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "butter"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  user_data = file("install_ansible.sh")
  private_ip = "10.0.1.11"


  tags = {
    Name = "Ansible Node"
  }
}

