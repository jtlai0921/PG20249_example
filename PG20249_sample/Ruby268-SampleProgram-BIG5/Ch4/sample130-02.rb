p File.fnmatch('\*', '*')					#=> true
p File.fnmatch('\*', 'a')					#=> false
p File.fnmatch('\*', '*', File::FNM_NOESCAPE)			#=> false
p File.fnmatch('\*', '\a', File::FNM_NOESCAPE)			#=> true
p File.fnmatch("foo?bar.rb", "foo/bar.rb", File::FNM_PATHNAME)	#=> false
p File.fnmatch("?foo.rb", ".foo.rb", File::FNM_DOTMATCH)	#=> true
p File.fnmatch("*foo.rb", ".foo.rb", File::FNM_DOTMATCH)	#=> true
p File.fnmatch("*.rb", "FOO.RB")				#=> false
p File.fnmatch("*.rb", "FOO.RB", File::FNM_CASEFOLD)		#=> true