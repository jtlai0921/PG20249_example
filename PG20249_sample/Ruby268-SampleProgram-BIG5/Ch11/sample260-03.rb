class C
  def good_name
    "OK"
  end
  def bad_name
    warn "C#bad_name is obsolete; use #good_name instead" if $VERBOSE
    good_name()
  end
end
