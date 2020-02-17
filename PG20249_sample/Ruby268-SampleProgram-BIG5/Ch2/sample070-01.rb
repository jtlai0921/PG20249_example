def valid_regexp?(pattern)
  begin
    Regexp.compile(pattern)
    true
  rescue RegexpError
    false
  end
end
