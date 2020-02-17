count = 0
"痴痴痴痴河河河痴河ゅて".scan(/[痴河]/) {
  count += 1
}
p count	#=> 9
