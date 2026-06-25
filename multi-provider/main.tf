resource "local_file" "petfile" {
  filename        = "/tmp/pet2.txt"
  content         = "this is another file for the purpose."
  file_permission = 755

}

resource "random_pet" "my_pet" {
  prefix    = "Mr"
  separator = ". "
  length    = "1"

}

resource "random_password" "my_pass" {
  length           = 16
  special          = true
  override_special = "!@#$%&*()_+-=[]{}<>:?"

}

resource "random_string" "my_string" {
  length           = 16
  special          = true
  override_special = "/@£$"
}