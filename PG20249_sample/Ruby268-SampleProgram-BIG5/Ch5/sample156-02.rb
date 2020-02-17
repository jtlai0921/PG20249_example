$stdout.sync = true
1.upto(50){|progress|
  bar = "o" * progress
  printf("\r|%-50s| %d", bar, progress)
  sleep(0.1)
}
puts
