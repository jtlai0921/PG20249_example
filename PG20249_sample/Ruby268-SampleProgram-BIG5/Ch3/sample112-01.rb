require "bsearch"
num = %w(£t £u £u £v £x £y).bsearch_first{|elem| elem <=> "£u" }
p num	#=> 1

num = %w(£t £u £u £v £x £y).bsearch_first{|elem| elem <=> "£w" }
p num	#=> nil

num = %w(£t £u £u £v £x £y).bsearch_last{|elem| elem <=> "£u" }
p num	#=> 2

num = %w(£t £u £u £v £x £y).bsearch_last{|elem| elem <=> "£w" }
p num	#=> nil
