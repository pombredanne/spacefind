require "spacefind/version"

module Spacefind
  module_function

  def trailing_whitespace?(f)
    !!(File.read(f).match(/\?>\s{2,}\Z/m))
  rescue ArgumentError
    false
  end
end
