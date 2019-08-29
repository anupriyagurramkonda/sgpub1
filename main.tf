provider "aws" {
  region     = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_security_group" "example" {
 
    name = "${var.name}"

 ingress {
    from_port       = "${var.ib_from_port}"
    to_port         = "${var.ib_to_port}"
    protocol        = "${var.ib_protocol}"
    cidr_block     = ["${var.ib_cidr_block}"]
   }
  egress {
    from_port       = "${var.ob_from_port}"
    to_port         = "${var.ob_to_port}"
    protocol        = "${var.ob_protocol}"
    cidr_block     = ["${var.ob_cidr_block}"]
   }
  tags = {
    Name = "${var.name}"
  }

}
