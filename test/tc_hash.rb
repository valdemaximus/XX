require "test/unit"

require "extensions/array"
require "extensions/hash"
require "extensions/string"

class TestToAndFromUrl < Test::Unit::TestCase
  def test_simple_hash
    params = {:hello => 'joe', :fun => 'trips', :trip => 'Florida'}
    assert_equal("trip=Florida&hello=joe&fun=trips", CGI::unescape(params.to_url_params))
  end
  
  def test_simple_hash_with_symbols_instead_of_strings
    params = {:hello => :joe, :fun => :trips, :trip => :Florida}
    assert_equal("trip=Florida&hello=joe&fun=trips", CGI::unescape(params.to_url_params))
  end
  
  def test_only_hash_of_hashes
    params = {:hello => 'joe', :fun => {:stuff => {:basketball => :sports, :football => 'sports'}, :trip => 'Florida'}}
    assert_equal("hello=joe&fun[trip]=Florida&fun[stuff][football]=sports&fun[stuff][basketball]=sports", CGI::unescape(params.to_url_params))
  end
  
  def test_hash_of_hashes_and_arrays
    params = {:hello => 'joe', :fun => {:stuff => {:sports => ['basketball', 'football']}, :trip => 'Florida'}}
    assert_equal("hello=joe&fun[trip]=Florida&fun[stuff][sports][]=basketball&fun[stuff][sports][]=football", CGI::unescape(params.to_url_params))
  end
  
  def test_arrays_at_root
    params = {:sports => ['basketball', 'football']}
    assert_equal("sports[]=basketball&sports[]=football", CGI::unescape(params.to_url_params))
  end
end