class Array
  def shuffle
    arr = dup
    collect{ arr.slice!(rand(arr.length)) }
  end
end
