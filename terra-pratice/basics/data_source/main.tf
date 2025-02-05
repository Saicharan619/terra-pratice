data "local_file" "datasource" {
  filename = "sample.txt"
}

output "name" {
  value = data.local_file.datasource.content
}