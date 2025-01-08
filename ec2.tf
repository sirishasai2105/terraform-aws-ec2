resource "aws_instance" "terraform" {
    count = 3
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-02c411625d172771b"] 
    instance_type = "t2.micro"
    tags = {
        Name = "node-1"
    }
}