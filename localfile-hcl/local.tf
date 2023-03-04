resource "local_file" "pet" {
    filename = "/tmp/pets.txt"
    file_permission = "755"
    content = "We all love pets, specially dogs"
  
}
