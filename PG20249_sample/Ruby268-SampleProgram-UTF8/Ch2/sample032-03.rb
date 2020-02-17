count = 0
"博博博博碩碩碩博碩文化".scan(/[博碩]/) {
  count += 1
}
p count	#=> 9
