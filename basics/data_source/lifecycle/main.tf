resource "random_integer" "name" {
  max = 500
  min = 490
}
resource "local_file" "name" {
  filename = "lifecycle.txt"
  content  = random_integer.name.result

     lifecycle {
  #   create_before_destroy = true
  #   prevent_destroy = true
  #   ignore_changes = [ min ]
   }
}

output "result" {
  value = random_integer.name.result

}

