# URI（URL）
require "uri"
URI.regexp	# 在Ruby 1.8.1之後才可以使用
URI.regexp(%w(http https ftp))	# 限定Scheme
