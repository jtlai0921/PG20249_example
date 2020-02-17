TABLE = {
  "ａ" => "Ａ",
  "ｉ" => "Ｉ",
  "ｕ" => "Ｕ",
  "ｅ" => "Ｅ",
  "ｏ" => "Ｏ"
}
p "ａｂｃｄｅｆｇｈｉ".gsub(/[ａｉｕｅｏ]/){|ch| TABLE[ch]}
  #=> "ＡｂｃｄＥｆｇｈＩ"
