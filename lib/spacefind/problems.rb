module Spacefind
  class SpacefindProblem
  end

  class LeadingWhitespaceProblem < SpacefindProblem
    def description
      'SP0001: Leading whitespace detected.'
    end
  end

  class TrailingWhitespaceProblem < SpacefindProblem
    def description
      'SP0002: Trailing whitespace detected.'
    end
  end

  class ByteOrderMarkProblem < SpacefindProblem
    def description
      'SP0003: UTF-8 byte-order mark detected.'
    end
  end

  class InvalidByteSequenceProblem < SpacefindProblem
    def description
      'SP0004: Invalid UTF-8 byte sequence detected.'
    end
  end
end
