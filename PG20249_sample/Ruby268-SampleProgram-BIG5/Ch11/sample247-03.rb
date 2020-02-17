# 在別的程序中
require "pstore"
db = PStore.new("pstest")
db.transaction{
  p db["key"]	#=> [[1, 2, 3], {1=>2}, 0, [[1, 2], 4], "str"]
}
