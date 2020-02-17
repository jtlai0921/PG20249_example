require "abbrev"

class Completer
  include Abbrev

  def initialize(words)
    @table = Abbrev.abbrev(words)
  end

  def complete(head)
    @table[head] or raise CompletionError, "no match: #{head}"
  end
end
