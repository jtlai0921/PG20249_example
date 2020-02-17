class Ohash
  def initialize
    @keys = Array.new
    @content = Hash.new
  end

  def size
    @content.size
  end

  alias length size

  def [](key)
    @content[key]
  end

  def []=(key, value)
    @content[key] = value
    if !@keys.include?(key)
      @keys << key
    end
  end

  def delete(key)
    @keys.delete(key)
    @content.delete(key)
  end

  def keys
    @keys.dup
  end

  def values
    @keys.map{|key| @content[key] }
  end
end

oh = Ohash.new
oh["to"] = "recv@example.jp"
oh["from"] = "send@example.jp"
oh["subject"] = "Test Mail"
p oh.keys	#=> ["to", "from", "subject"]
