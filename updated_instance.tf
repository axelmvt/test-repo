resource "aws_instance" "tfer--i-0043d90e6b3007ccd_Sage-Server" {
  ami                         = "ami-03db23f7d74959cbb"
  associate_public_ip_address = false
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "r6a.xlarge"
  ipv6_address_count                   = 0
  key_name                             = "MAS"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "172.30.1.24"

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    throughput            = 125
    volume_size           = 300
    volume_type           = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-6b68662d"

  tags = {
    Name = "Sage-Server"
  }

  tags_all = {
    Name = "Sage-Server"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-09f6a0edd70324c7d"]
}

resource "aws_instance" "tfer--i-027dc40548fd9410f_HGV-Analytics-Server" {
  ami                         = "ami-0c4fa27c84ae399e2"
  associate_public_ip_address = true
  availability_zone           = "us-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = true

  ebs_block_device {
    delete_on_termination = false
    device_name           = "xvdf"
    encrypted             = false
    iops                  = 3000

    tags = {
      Name = "HGV-Analytics-Server"
    }

    tags_all = {
      Name = "HGV-Analytics-Server"
    }

    throughput  = 125
    volume_size = 100
    volume_type = "gp3"
  }

  ebs_optimized = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m5.xlarge"
  ipv6_address_count                   = 0
  key_name                             = "HGV-Analytics"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "204.236.0.37"

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000

    tags = {
      Name = "HGV-Analytics-Server"
    }

    tags_all = {
      Name = "HGV-Analytics-Server"
    }

    throughput  = 125
    volume_size = 750
    volume_type = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-0aa5b1b8bb70f1595"

  tags = {
    Name = "HGV-Analytics-Server"
  }

  tags_all = {
    Name = "HGV-Analytics-Server"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-07f04d5ae8d4c99ba"]
}

resource "aws_instance" "tfer--i-0350424fb846ca860_EQA-Production-Webserver" {
  ami                         = "ami-062a340c2aab3b162"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  
  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = 0
  key_name                             = "EQA-Production-Webserver"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.1.0.165"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Name = "EQA-Production-Webserver"
    }

    tags_all = {
      Name = "EQA-Production-Webserver"
    }

    volume_size = 300
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-0ccdf092d4021cc7b"

  tags = {
    Name = "EQA-Production-Webserver"
  }

  tags_all = {
    Name = "EQA-Production-Webserver"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-02da0392fe633bb1c"]
}

resource "aws_instance" "tfer--i-03d36b34818191882_HGV-Table-FTP-Server-0028--0027-24-0029-" {
  ami                         = "ami-08f5f3cd3a44fc3c4"
  associate_public_ip_address = true
  availability_zone           = "us-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m5.large"
  ipv6_address_count                   = 0
  key_name                             = "FTP-New"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "204.236.0.11"

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000

    tags = {
      Name = "FTP('24)"
    }

    tags_all = {
      Name = "FTP('24)"
    }

    throughput  = 125
    volume_size = 750
    volume_type = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-0aa5b1b8bb70f1595"

  tags = {
    Name = "HGV-Table-FTP-Server('24)"
  }

  tags_all = {
    Name = "HGV-Table-FTP-Server('24)"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0d1f999ebb81351a2"]
}

resource "aws_instance" "tfer--i-03ef791875b261b2e_HGV-ETL" {
  ami                         = "ami-0bcd50ce2dc0641d1"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m5.xlarge"
  ipv6_address_count                   = 0
  key_name                             = "HGV-ETL"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.1.0.129"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Name = "HGV-ETL"
    }

    tags_all = {
      Name = "HGV-ETL"
    }

    volume_size = 250
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-0ccdf092d4021cc7b"

  tags = {
    Name = "HGV-ETL"
  }

  tags_all = {
    Name = "HGV-ETL"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-02da0392fe633bb1c"]
}

resource "aws_instance" "tfer--i-044f816d6a7dba953_micromdm-server" {
  ami                         = "ami-0aa117785d1c1bfe5"
  associate_public_ip_address = true
  availability_zone           = "us-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  
  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "172.30.0.101"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:us-west-1:222225274634:key/c417fe55-957e-4ac3-86cc-e88e379ab314"

    tags = {
      Name = "micromdm"
    }

    tags_all = {
      Name = "micromdm"
    }

    throughput  = 125
    volume_size = 50
    volume_type = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-cfea24aa"

  tags = {
    Name = "micromdm-server"
  }

  tags_all = {
    Name = "micromdm-server"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2gKIyBVcGRhdGUgYW5kIGluc3RhbGwgZGVwZW5kZW5jaWVzCnl1bSB1cGRhdGUgLXkKeXVtIGluc3RhbGwgLXkgY3VybCB1bnppcCBodHRwZAoKIyBEb3dubG9hZCBhbmQgY29uZmlndXJlIE1pY3JvTURNCmN1cmwgLUwgLW8gbWljcm9tZG0gaHR0cHM6Ly9naXRodWIuY29tL21pY3JvbWRtL21pY3JvbWRtL3JlbGVhc2VzL2Rvd25sb2FkL3YxLjEwLjAvbWljcm9tZG1fbGludXhfYW1kNjQKY2htb2QgK3ggbWljcm9tZG0KbXYgbWljcm9tZG0gL3Vzci9sb2NhbC9iaW4vCgojIEVuYWJsZSBhbmQgc3RhcnQgSFRUUCBzZXJ2ZXIKc3lzdGVtY3RsIGVuYWJsZSBodHRwZApzeXN0ZW1jdGwgc3RhcnQgaHR0cGQK"
  vpc_security_group_ids = ["sg-0122b8ec7e794f241"]
}

resource "aws_instance" "tfer--i-05046ad623a6db7e8_TimeClock" {
  ami                         = "ami-0e056dea26af2752a"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = true
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m4.large"
  ipv6_address_count                   = 0
  key_name                             = "TimeClock-New"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "172.30.1.225"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Name = "TimeClock"
    }

    tags_all = {
      Name = "TimeClock"
    }

    volume_size = 500
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-6b68662d"

  tags = {
    Name = "TimeClock"
  }

  tags_all = {
    Name = "TimeClock"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-d87e54bd"]
}

resource "aws_instance" "tfer--i-064e928f1acf50121_HGV-Web-Server" {
  ami                         = "ami-0563db429435a8b9c"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  
  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "HGV-WebSever-Test"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.0.147.199"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Name = "HGV-Web-Server"
    }

    tags_all = {
      Name = "HGV-Web-Server"
    }

    volume_size = 100
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-08a77bb9a5777ed39"

  tags = {
    Name = "HGV-Web-Server"
  }

  tags_all = {
    Name = "HGV-Web-Server"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-042898a8b7ede6147"]
}

resource "aws_instance" "tfer--i-0705e5b444886d8e0_EQA-Dev-Webserver" {
  ami                         = "ami-0ea4047e745a72213"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  
  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "EQA-Webserver"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.1.0.182"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Name = "EQA-Dev-Webserver"
    }

    tags_all = {
      Name = "EQA-Dev-Webserver"
    }

    volume_size = 300
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-0ccdf092d4021cc7b"

  tags = {
    Name               = "EQA-Dev-Webserver"
    QSConfigName-fb54e = "dev-patch-schedule"
  }

  tags_all = {
    Name               = "EQA-Dev-Webserver"
    QSConfigName-fb54e = "dev-patch-schedule"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-02da0392fe633bb1c"]
}

resource "aws_instance" "tfer--i-07e5daf09f1188523_Tableau-0020-Server" {
  ami                         = "ami-0c0e5a396959508b0"
  associate_public_ip_address = true
  availability_zone           = "us-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 8
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "Tableau-Server-WorkloadStack-CWG9983BUSVD-TableauServerInstanceProfile-3OXMKX1CC4SZ"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m5.4xlarge"
  ipv6_address_count                   = 0
  key_name                             = "Tableau"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
  }

  private_ip = "10.0.139.116"

  root_block_device {
    delete_on_termination = false
    encrypted             = false

    tags = {
      Name = "Tableau"
    }

    tags_all = {
      Name = "Tableau"
    }

    volume_size = 225
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-04c1d9ea8ca8a554e"

  tags = {
    Environment = "Tableau"
    Name        = "Tableau Server"
    SERVICE     = "ETI"
  }

  tags_all = {
    Environment = "Tableau"
    Name        = "Tableau Server"
    SERVICE     = "ETI"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggLXgKYXB0LWdldCB1cGRhdGUKYXB0LWdldCBpbnN0YWxsIC15IHB5dGhvbi1zZXR1cHRvb2xzCgojIENhbGwgSW5pdAovdXNyL2Jpbi9lYXN5X2luc3RhbGwgLS1zY3JpcHQtZGlyIC9vcHQvYXdzL2JpbiBodHRwczovL3MzLmFtYXpvbmF3cy5jb20vY2xvdWRmb3JtYXRpb24tZXhhbXBsZXMvYXdzLWNmbi1ib290c3RyYXAtbGF0ZXN0LnRhci5negovb3B0L2F3cy9iaW4vY2ZuLWluaXQgLS1zdGFjayAnVGFibGVhdS1TZXJ2ZXItV29ya2xvYWRTdGFjay1DV0c5OTgzQlVTVkQtV29ya2xvYWRTdGFjay0xUDFNSzRUUzY1OTlZJyAtLXJlc291cmNlIFRhYmxlYXVTZXJ2ZXIgLS1yZWdpb24gJ3VzLXdlc3QtMScKIyBWYXJpb3VzIG1hY2hpbmUgY29uZmlncwpob3N0bmFtZWN0bCBzZXQtaG9zdG5hbWUgJChob3N0bmFtZWN0bCAtLXN0YXRpYykKc2V0dXBfc2Z0cCgpIHsKICAgIHNvdXJjZSAnL3RtcC9zZWNyZXRzLnByb3BlcnRpZXMnCiAgICB1c2VyYWRkIC1tICIkdHNtX2FkbWluX3VzZXIiCiAgICBlY2hvIC1lICIkdHNtX2FkbWluX3Bhc3NcbiR0c21fYWRtaW5fcGFzcyIgfCBwYXNzd2QgIiR0c21fYWRtaW5fdXNlciIgCgp9CnNldHVwX3NmdHAKdW5zZXQgLWYgc2V0dXBfc2Z0cApleHBvcnQgTEFORz1lbl9VUy5VVEYtOAojIEluc3RhbGwgVGFibGVhdSBTZXJ2ZXIKaW5zdGFsbCgpIHsKICAgIHNvdXJjZSAnL3RtcC9zZWNyZXRzLnByb3BlcnRpZXMnCi90bXAvYXV0b21hdGVkLWluc3RhbGxlciAtYSAkdHNtX2FkbWluX3VzZXIgLWYgL3RtcC9jb25maWcuanNvbiAtciAvdG1wL3JlZ2lzdHJhdGlvbi5qc29uIC1zIC90bXAvc2VjcmV0cy5wcm9wZXJ0aWVzICAtdiAtLWFjY2VwdGV1bGEgLS1mb3JjZSAvdG1wL3RhYmxlYXUtc2VydmVyLmRlYgp9Cmluc3RhbGwKdW5zZXQgLWYgaW5zdGFsbAojIFNpZ25hbCBzdWNjZXNzZnVsIGNvbXBsZXRpb24KL29wdC9hd3MvYmluL2Nmbi1zaWduYWwgLWUgJD8gLS1zdGFjayAnVGFibGVhdS1TZXJ2ZXItV29ya2xvYWRTdGFjay1DV0c5OTgzQlVTVkQtV29ya2xvYWRTdGFjay0xUDFNSzRUUzY1OTlZJyAtLXJlc291cmNlIFRhYmxlYXVTZXJ2ZXIgLS1yZWdpb24gJ3VzLXdlc3QtMScKIyBDbGVhbnVwCnJtIC1mIC90bXAvY29uZmlnLmpzb24Kcm0gLWYgL3RtcC9yZWdpc3RyYXRpb24uanNvbgpybSAtZiAvdG1wL3NlY3JldHMucHJvcGVydGllcwpybSAtZiAvdG1wL3RhYmxlYXUtc2VydmVyLmRlYgpybSAtZiAvdG1wL2F1dG9tYXRlZC1pbnN0YWxsZXI="
  vpc_security_group_ids = ["sg-02e1410e7cd8fc721"]
}

resource "aws_instance" "tfer--i-0a9db861cd39cf5bb_Bomgar_Appliance" {
  ami                         = "ami-0f148edef04e0fc9f"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 2
    threads_per_core = 1
  }

  
  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = true

  ebs_block_device {
    delete_on_termination = true
    device_name           = "/dev/sdf"
    encrypted             = false
    iops                  = 300

    tags = {
      Bomgar = "Server and Storage"
      Name   = "Bomgar"
    }

    tags_all = {
      Bomgar = "Server and Storage"
      Name   = "Bomgar"
    }

    throughput  = 0
    volume_size = 100
    volume_type = "gp2"
  }

  ebs_optimized = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.medium"
  ipv6_address_count                   = 0

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
  }

  private_ip = "172.30.1.224"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Bomgar = "Server and Storage"
      Name   = "Bomgar"
    }

    tags_all = {
      Bomgar = "Server and Storage"
      Name   = "Bomgar"
    }

    volume_size = 32
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-6b68662d"

  tags = {
    Bomgar  = "Server and Storage"
    Name    = "Bomgar_Appliance"
    SERVICE = "ETI"
  }

  tags_all = {
    Bomgar  = "Server and Storage"
    Name    = "Bomgar_Appliance"
    SERVICE = "ETI"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-00bcfdd2f2968db09"]
}

resource "aws_instance" "tfer--i-0b569d4992efd7906_HGV-Envision-Database-Server" {
  ami                         = "ami-09388cc9e189c444f"
  associate_public_ip_address = true
  availability_zone           = "us-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

    disable_api_stop        = false
  disable_api_termination = true
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m5.xlarge"
  ipv6_address_count                   = 0
  key_name                             = "EnvisionDB(19)"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "204.236.0.93"

  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 4000

    tags = {
      Name = "EnvisionDatabaseServer"
    }

    tags_all = {
      Name = "EnvisionDatabaseServer"
    }

    volume_size = 800
    volume_type = "io1"
  }

  source_dest_check = true
  subnet_id         = "subnet-0aa5b1b8bb70f1595"

  tags = {
    Name = "HGV-Envision-Database-Server"
  }

  tags_all = {
    Name = "HGV-Envision-Database-Server"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0df2504c7a37d9341"]
}

resource "aws_instance" "tfer--i-0f798ae7184660036_EQA-Staging-Webserver" {
  ami                         = "ami-0945446ac3a2dca06"
  associate_public_ip_address = true
  availability_zone           = "us-west-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  
  cpu_options {
    core_count       = 2
    threads_per_core = 1
  }

  
  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AWS-EC2-Agent"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.medium"
  ipv6_address_count                   = 0
  key_name                             = "EQA-Webserver"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.1.0.106"

  root_block_device {
    delete_on_termination = true
    encrypted             = false

    tags = {
      Name = "EQA-Staging-Webserver"
    }

    tags_all = {
      Name = "EQA-Staging-Webserver"
    }

    volume_size = 300
    volume_type = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-0ccdf092d4021cc7b"

  tags = {
    Name = "EQA-Staging-Webserver"
  }

  tags_all = {
    Name = "EQA-Staging-Webserver"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-02da0392fe633bb1c"]
}
