require 'spacefind/problems'

# Problematic character finder
module Spacefind
  module_function

  def scan_for_problems(f)
    problems = []
    contents = File.read(f)

    problems << LeadingWhitespaceProblem.new if /\A\s+<\?php/m =~ contents
    problems << TrailingWhitespaceProblem.new if /\?>\s{2,}\Z/m =~ contents
    problems << ByteOrderMarkProblem.new if contents.start_with?("\uFEFF")

    problems
  rescue ArgumentError
    [
      InvalidByteSequenceProblem.new
    ]
  end
end
