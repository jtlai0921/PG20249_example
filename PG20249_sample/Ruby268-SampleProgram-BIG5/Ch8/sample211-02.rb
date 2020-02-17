obj = ["This is a", "very long", "array of", "strings",
       "foo", "bar", "baz", "quex", "moe",
       "mada", "mada", "tuduku",
       "nagai", "nagai", "hairetu"]

p obj
=begin
  #=> ["This is a", "very long", "array of", "strings",
       "foo", "bar", "baz", "quex", "moe", "mada", "mada",
       "tuduku", "nagai", "nagai", "hairetu"]
=end
       
require "pp"
pp obj
=begin
  #=>
["This is a",
 "very long",
 "array of",
 "strings",
 "foo",
 "bar",
 "baz",
 "quex",
 "moe",
 "mada",
 "mada",
 "tuduku",
 "nagai",
 "nagai",
 "hairetu"]
=end
