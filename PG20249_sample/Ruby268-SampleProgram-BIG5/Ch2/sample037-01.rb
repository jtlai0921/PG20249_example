def integer_string?(str)
  begin
    Integer(str)
    true
  rescue ArgumentError
    false
  end
end

def float_string?(str)
  begin
    Float(str)
    true
  rescue ArgumentError
    false
  end
end
