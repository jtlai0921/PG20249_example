class C
  def some_method(*args)
    case args.length
    when 2	# �s���{���X
      p args[0]
      p args[1]
    when 1	# �ª��{���X
      p args[0]
    else
      raise ArgumentError, "wrong \# of arguments: #{args.length} for 1 or 2"
    end
  end
end
