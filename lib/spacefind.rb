require 'spacefind/problems'

module Spacefind
  module_function

  def scan_for_problems(f)
    problems = []
    contents = File.read(f)

    problems << LeadingWhitespaceProblem.new if contents.match(/\A\s+<\?php/m)
    problems << TrailingWhitespaceProblem.new if contents.match(/\?>\s{2,}\Z/m)
    problems << ByteOrderMarkProblem.new if contents.match(/\A\uFEFF/)

    problems
  rescue ArgumentError
    [
      InvalidByteSequenceProblem.new
    ]
  end
end
