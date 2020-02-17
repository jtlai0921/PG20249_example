unless Array.method_defined?(:values_at)
  class Array
    def values_at(*keys)
      keys.map{|k| self[k] }
    end
  end
end
