provider "aws" {
  region     = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_security_group" "example" {
 
    name = "${var.name}"


  egress {
    from_port       = "${var.from_port}"
    to_port         = "${var.to_port}"
    protocol        = "${var.protocol}"
    cidr_blocks     = ["${var.cidr_blocks}"]
   }
  tags = {
    Name = "${var.name}"
  }

}
