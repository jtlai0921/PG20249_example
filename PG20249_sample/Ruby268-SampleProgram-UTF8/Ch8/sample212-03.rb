require "etc"
Etc.passwd{|pw|
  p pw
}
