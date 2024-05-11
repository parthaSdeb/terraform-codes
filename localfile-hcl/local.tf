resource "local_file" "pet" {
    filename = "/tmp/pets.txt"
    file_permission = "755"
    content = "We all love pets, specially dogs"
  
}

resource "local_sensitive_file" "sensitive_file" {
    filename = "/tmp/sensitive.txt"
    file_permission = 0755
    content = "this is a secret file"
  
}


resource "local_file" "name" {
  filename = "/tmp/partha.txt"
  content = "HI, this is partha speeking!"
}