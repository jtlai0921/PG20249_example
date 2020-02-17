p [27240, 6514034, "foo"].pack("N2A8")		#=> "\000\000jh\000cerfoo     "
p "\000\000jh\000cerfoo     ".unpack("N2A8")	#=> [27240, 6514034, "foo"]
