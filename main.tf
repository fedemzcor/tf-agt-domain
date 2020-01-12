resource "aws_api_gateway_domain_name" "api" {
  certificate_arn = var.certificate_arn
  domain_name     = var.domain_name
}

# Example DNS record using Route53.
# Route53 is not specifically required; any DNS host can be used.
resource "aws_route53_record" "api" {
  depends_on = [aws_api_gateway_domain_name.api]
  name    = aws_api_gateway_domain_name.api.domain_name
  type    = "A"
  zone_id = var.zone_id

  alias {
    evaluate_target_health = true
    name                   = aws_api_gateway_domain_name.api.cloudfront_domain_name
    zone_id                = aws_api_gateway_domain_name.api.cloudfront_zone_id
  }
}

resource "aws_api_gateway_base_path_mapping" "test" {
  api_id      = var.agtw_id
  stage_name  = var.agtw_stage_name
  domain_name = aws_api_gateway_domain_name.api.domain_name


}
