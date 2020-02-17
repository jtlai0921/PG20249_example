p "abc\ndef\nghi\n".slice(/..$/m)	#=> "bc"
p "abc\ndef\nghi\n".slice(/..\Z/m)	#=> "hi"
p "abc\ndef\nghi\n".slice(/..\z/m)	#=> "i\n"
