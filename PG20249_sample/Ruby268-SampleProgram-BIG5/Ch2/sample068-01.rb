def hide_password(str)
  str.gsub(/(Password:)(.*)/){ $1 + "*" * $2.length }
end
