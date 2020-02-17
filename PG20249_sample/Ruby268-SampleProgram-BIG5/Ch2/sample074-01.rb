# 可以與多位元組文字中一個文字匹配的正規表現
shift_jis = /[\x81-x9f\xe0-\xef][\x40-\x7e\x80-\xfc]/n
euc_jp = /[\xa1-\xfe][\xa1-\xfe]/n
utf8 = / [\xc0-\xdf][\x80-\xbf]	| [\xe0-\xef][\x80-\xbf]{2}
       | [\xf0-\xf7][\x80-\xbf]{3}	| [\xf8-\xfb][\x80-\xbf]{4}
       | [\xfc-\xfd][\x80-xbf]{5} /xn

# 對任一個編碼都可以
Regexp.union(euc_jp, shift_jis, utf8)
