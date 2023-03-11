resource "local_file" "petfile" {
  filename = var.filename
  content = var.content
  file_permission = var.file_permission
}

resource "random_pet" "pet_random_name" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}