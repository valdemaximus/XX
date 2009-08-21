require "test/unit"

require "extensions/array"
require "extensions/hash"
require "extensions/string"

class TestToAndFromUrl < Test::Unit::TestCase
  def test_only_hash_of_hashes
    params = {:hello => 'joe', :fun => {:stuff => {:basketball => :sports, :football => 'sports'}, :trip => 'Florida'}}
    assert_equal("hello=joe&fun[stuff][basketball]=sports&fun[stuff][football]=sports&fun[trip]=Florida", CGI::unescape(params.to_url_params))
  end
  
  def test_hash_of_hashes_and_arrays
    params = {:hello => 'joe', :fun => {:stuff => {:sports => ['basketball', 'football']}, :trip => 'Florida'}}
    assert_equal("hello=joe&fun[stuff][sports][]=basketball&fun[stuff][sports][]=football&fun[trip]=Florida", CGI::unescape(params.to_url_params))
  end
end