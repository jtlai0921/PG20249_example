text = <<EndOfMail
From: Minero Aoki <aamine@loveruby.net>
To: Taro Yamada <taro@example.com>
Subject: Re: =?iso-2022-jp?B?GyRCJFAkMBsoQg==?=
Mime-Version: 1.0
Context-Type: text/plain; charset=big5

���n�N��A�o�O�ӯ��ΡC
EndOfMail

require "tmail"
require "nkf"

mail = TMail::Mail.parse(text)
p mail.to			#=> ["taro@example.com"]
p mail.from		#=> ["aamine@loveruby.net"]
p mail.friendly_from	#=> "Minero Aoki"
p mail.subject		#=> "Re: ��"
p NKF.nkf("-w -m0", mail.body)	#=> "���n�N��A�o�O�ӯ��ΡC"

addr = Tmail::Address.parse("Minero Aoki <aamine@loveruby.net>")
p addr	#=> #<TMail::Address aamine@loveruby.net>
p addr.name	#=> "Minero Aoki"
p addr.spec	#=> "aamine@loveruby.net"
