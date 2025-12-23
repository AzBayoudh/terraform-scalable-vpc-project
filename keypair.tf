resource "aws_key_pair" "jumpbox" {
    key_name = "jumpbox-key"
    public_key = file(pathexpand("~/keys/jumpbox.pub"))
}