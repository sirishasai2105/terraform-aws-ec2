resource "aws_instance" "terraform" {
    count = length(var.instances)
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-001753742e64eaea2"] 
    instance_type = "t2.micro"
    tags = {
        Name = var.instances[count.index]
    }
}