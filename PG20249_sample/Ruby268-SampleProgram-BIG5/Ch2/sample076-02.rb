text = <<EndOfMail
From: Minero Aoki <aamine@loveruby.net>
To: Taro Yamada <taro@example.com>
Subject: Re: =?iso-2022-jp?B?GyRCJFAkMBsoQg==?=
Mime-Version: 1.0
Context-Type: text/plain; charset=big5

不好意思，這是個臭蟲。
EndOfMail

require "tmail"
require "nkf"

mail = TMail::Mail.parse(text)
p mail.to			#=> ["taro@example.com"]
p mail.from		#=> ["aamine@loveruby.net"]
p mail.friendly_from	#=> "Minero Aoki"
p mail.subject		#=> "Re: 我"
p NKF.nkf("-w -m0", mail.body)	#=> "不好意思，這是個臭蟲。"

addr = Tmail::Address.parse("Minero Aoki <aamine@loveruby.net>")
p addr	#=> #<TMail::Address aamine@loveruby.net>
p addr.name	#=> "Minero Aoki"
p addr.spec	#=> "aamine@loveruby.net"
