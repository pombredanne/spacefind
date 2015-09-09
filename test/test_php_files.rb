require 'minitest_helper'

class TestPhpFiles < Minitest::Test

  def test_good_files
    Dir.glob("test/fixtures/good/*.php").each do |f|
      refute Spacefind.problematic?(f), "While checking file '#{f}'"
    end
  end

  def test_bad_files
    Dir.glob("test/fixtures/bad/*.php").each do |f|
      assert Spacefind.problematic?(f), "While checking file '#{f}'"
    end
  end
end
