common_tags = {
  "owner" = "suraj"
}
region = "us-east-1"


s3_bucket_id = "suraj-family-transfer-1"
sub_folder   = "suraj-folder"

server_transfer = {
  0 = {
    endpoint_type = "PUBLIC"
    identity_provider_type = "SERVICE_MANAGED"
    force_destroy          = false
    tags = {
      "value" = "transfer_server"
    }
    endpoint_vpc = []

  }
}


transfer_ssh_keys = {
  0 = {
    
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQChd3RGKkLFG6kg1fPNaR+Ry449EvwvcwS8P2s9IR4OqU8Ubq2bWg0NLbgE2BrLDFEsNEjtzO7X41pqDsAYL4qzA42itVQsHcO+IxfIzkQzUZ0V4/qtfRY2YmNmy7PNbhaCGDGjy5sPut9q2FlGt+6p1zZcfi5IrMz6irnnLdeojouZtl+Gm0jWNQcN0WOYwy0f+aXNrCkNAnpPqzWtPcHcqT/tFWaYSQPVOd6TwPD5c+Bdv8Aoq8ocmdtWRarBPUFbNsyPS4CP/S/dVhR14na5uV/XcYAkFdj1BReE39SWHdgJek1ANTAhhGQOQYK92odms3rvyIcfrnldre6NM25H6MShCmmHr5aEwsIBCrCTBXGYkiqOrgYh6ARpfaIzanOPSkYndRccAbay2vmnYZzuCKCZc+FF2032KDNt7p8aPBv93Q4NROYSgXJNqxBbjyqL6ox+Y7p4PIsp2Qqt6etdSuLj70fnMHckYswjS9Yxk3DfERPI9J2R3rpJPhJtHds="

  }
}


server_users = {
  "suraj-kaul" = {
    
    tags = {
      "value" = "server_user"
    }

  }

}


