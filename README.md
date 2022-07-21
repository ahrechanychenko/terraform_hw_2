# Terraform HW 2
As usual - create your own TF repo.

In this HW you need to implement Terraform module, that should deploy GCE instance and several related resources.

In addition to that you need to call that module in root TF module, and pass some outputs, like subnet self link, from 
VPC module to your GCE instance module

GCE instance module should create next resources 
- **google_compute_instance**
  - should be configurable with next variables
    - _name_
    - _machine_type_
    - _zone_
    - _image_
    - _network_
    - _subnet_
    - _startup_script_
    
- ____google_compute_address____ with internal address in subnet, that you create in VPC module[ https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address#example-usage---address-with-subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address#example-usage---address-with-subnetwork)
  - should be configurable with next variables
    - _name_
    - _subnetwork_
    - _address_type_ - should be internal by default
    - _address_
    - _region_

- **google_compute_disk**
  - should be configurable with next variables [https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk#example-usage---disk-basic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk#example-usage---disk-basic)
    - _name_
    - _size_
    - _type_ - should be HDD by default(pd-balanced)
    - _zone_

- **google_compute_attached_disk**
  - should be configurable with next variables [https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_attached_disk#example-usage](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_attached_disk#example-usage)
    - _disk_
    - _instance_

Then connect two modules together in root TF module to create VPC with nat and GCE instance in that VPC and subnet

main.tf
   - module VPC 
   - module GCE instance
   
