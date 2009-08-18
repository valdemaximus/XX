require "test/unit"

require "extensions/string"
require "extensions/time"

class TestExtensionsTime < Test::Unit::TestCase
  def test_not_blank?
    assert_equal(true, Time.now.not_blank?)
    assert_equal(false, Time.now.blank?)
  end
end