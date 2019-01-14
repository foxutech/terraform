resource "aws_instance" "test-instance" {
    ami = "ami-b73b63a0"   ## change image ID
    availability_zone = "us-east-1a"  ## change availability zone if need
    instance_type = "t2.micro"   ## change instance type
    key_name = "key-name"        ## add correct keyname
    subnet_id = "${aws_subnet.public_subnet_a.id}"
    vpc_security_group_ids = [
      "${aws_security_group.access.id}",
      "${aws_security_group.access.id}"
     ]
    tags {
      Name = "test-instance"
    }
    user_data = ""              ## add userdata inline or script. 
    iam_instance_profile = "${aws_iam_instance_profile.test_profile.id}"
}