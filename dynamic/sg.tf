resource "aws_security_group" "allow_all" {
  name   = "roboshop-strict-sg"

  dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content{
      from_port        = ingress.value   # from port 0 to means all ports
      to_port          = ingress.value
      protocol         = "-1"  # -1 means all protocols
      cidr_blocks      = ["0.0.0.0/0"]  # internet
    }
    
    
  }
  # ingress {
  #   from_port        = 3306   # from port 0 to means all ports
  #   to_port          = 3306
  #   protocol         = "-1"  # -1 means all protocols
  #   cidr_blocks      = ["0.0.0.0/0"]  # internet
    
  # }
  # ingress {
  #   from_port        = 80   # from port 0 to means all ports
  #   to_port          = 80
  #   protocol         = "-1"  # -1 means all protocols
  #   cidr_blocks      = ["0.0.0.0/0"]  # internet
    
  # }
  # ingress {
  #   from_port        = 8080   # from port 0 to means all ports
  #   to_port          = 8080
  #   protocol         = "-1"  # -1 means all protocols
  #   cidr_blocks      = ["0.0.0.0/0"]  # internet
    
  # }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "roboshop-strict-sg"
  }
}