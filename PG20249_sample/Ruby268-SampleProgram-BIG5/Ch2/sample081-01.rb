class CompletionError < StandardError; end

class Completer
  def initialize(words)
    @words = words
  end

  def complete(head)
    re = /\A#{head}/
    candidates = @words.select{|w| re =~ w }
    case candidates.size
    when 0
      raise CompletionError, "no match: #{head}"
    when 1
      return candidates[0]
    else
      raise CompletionError,
            "multiple candidates: #{candidates.join(', ')}"
    end
  end
end
