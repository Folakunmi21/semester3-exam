resource "aws_route53_zone" "personalsite-domain-name" {
  name = "personalsite.altschool-project.me"
}

resource "aws_route53_zone" "socksapp-domain-name" {
  name = "socksapp.altschool-project.me"
}

# Getting the zone_id for the load balancer

data "aws_elb_hosted_zone_id" "elb_zone_id" {
  depends_on = [
    kubernetes_service.kube-service-personalsite, kubernetes_service.kube-service-socks
  ]
}

# getting DNS record for portfolio

resource "aws_route53_record" "personalsite-record" {
  zone_id = aws_route53_zone.personalsite-domain-name.zone_id
  name    = "personalsite.altschool-project.me"
  type    = "A"

  alias {
    name                   = kubernetes_service.personalsite-service.status.0.load_balancer.0.ingress.0.hostname
    zone_id                = data.aws_elb_hosted_zone_id.elb_zone_id.id
    evaluate_target_health = true
  }
}

# getting DNS record for socksapp

resource "aws_route53_record" "socksapp-record" {
  zone_id = aws_route53_zone.socksapp-domain-name.zone_id
  name    = "socksapp.altschool-project.me"
  type    = "A"

  alias {
    name                   = kubernetes_service.kube-service-socks.status.0.load_balancer.0.ingress.0.hostname
    zone_id                = data.aws_elb_hosted_zone_id.elb_zone_id.id
    evaluate_target_health = true
  }
}