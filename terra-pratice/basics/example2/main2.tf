resource local_sensitive_file sample_res {
  filename = "sample_args.txt"
  content = "hi this is sensitive"
  file_permission = "0700"
}