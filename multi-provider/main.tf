resource "local_file" "petfile" {
    filename = "/tmp/pet2.txt"
    content = "this is another file for the purpose."
    file_permission = 755
  
}

resource "random_pet" "my_pet" {
    prefix = "Mr"
    separator = ". "
    length = "1"
  
}