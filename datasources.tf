# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
    compartment_id = "${var.tenancy_ocid}"
}

data "oci_core_private_ips" IPClusterFSMountTarget {
  subnet_id = "${oci_file_storage_mount_target.ClusterFSMountTarget.subnet_id}"

  filter {
    name = "id"
    values = ["${oci_file_storage_mount_target.ClusterFSMountTarget.private_ip_ids.0}"]
  }
}
