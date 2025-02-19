provider "aws" {
  region = "ap-south-1"
}

# Create an EBS Volume
resource "aws_ebs_volume" "my-ebs" {
  availability_zone = "ap-south-1b"
  size             = 8 
  type             = "gp3" 

  tags = {
    Name = "my-ebs"
  }
}

# Attach EBS Volume to an EC2 Instance
resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdf"  # Device name in EC2
  volume_id   = vol-06b53ab234dff96a0olume.my-ebs.id
  instance_id = "i-0b08678cf2ab896ca"
}

