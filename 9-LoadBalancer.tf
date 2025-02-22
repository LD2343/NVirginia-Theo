resource "aws_lb" "nvirginia_alb" {
  name               = "nvirginia-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.LB01-SG01-nvirginia.id]
  subnets = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1b.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
  #Lots of death and suffering here, make sure it's false

  tags = {
    Name = "nvirginiaLoadBalancer"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.nvirginia_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.nvirginia_tg.arn
  }
}

/*data "aws_acm_certificate" "cert" {
  domain   = "eastcoastsaiyans001.com"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.nvirginia_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app2_tg_443.arn
  }
}

output "lb_dns_name" {
  value       = aws_lb.nvirginia_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}*/
