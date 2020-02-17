class CountHash < Hash
  def initialize
    super
    @count = Hash.new(0)
  end

  def fetch(key)
    @count[key] += 1
    super(key, nil)
  end
  alias [] fetch

  def count(key)
    @count[key]
  end
end

c = CountHash.new
c["a"] = "a"
a1 = c["a"]
a2 = c["a"]
b1 = c["b"]
p c.count("a")	#=> 2
p c.count("b")	#=> 1
