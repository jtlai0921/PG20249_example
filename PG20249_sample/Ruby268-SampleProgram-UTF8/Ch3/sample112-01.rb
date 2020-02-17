require "bsearch"
num = %w(ㄅ ㄆ ㄆ ㄇ ㄉ ㄊ).bsearch_first{|elem| elem <=> "ㄆ" }
p num	#=> 1

num = %w(ㄅ ㄆ ㄆ ㄇ ㄉ ㄊ).bsearch_first{|elem| elem <=> "ㄈ" }
p num	#=> nil

num = %w(ㄅ ㄆ ㄆ ㄇ ㄉ ㄊ).bsearch_last{|elem| elem <=> "ㄆ" }
p num	#=> 2

num = %w(ㄅ ㄆ ㄆ ㄇ ㄉ ㄊ).bsearch_last{|elem| elem <=> "ㄈ" }
p num	#=> nil
