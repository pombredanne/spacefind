require "spacefind/version"

module Spacefind
  module_function

  def problematic?(f)
    contents = File.read(f)
    !!(
      contents.match(/\A\s+<\?php/m) || # Leading whitespace
      contents.match(/\?>\s{2,}\Z/m) || # Trailing whitespace
      contents.match(/\A\uFEFF/)        # UTF-8 Byte Order Mark
    )
  rescue ArgumentError
    false
  end
end
