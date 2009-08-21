require 'rubygems'
require 'activesupport'

class String
  def not_empty?
    not empty?
  end
  
  alias :not_blank? :not_empty?
  
  

  def from_url_params
    puts self
    result = {}.with_indifferent_access
    self.split('&').each do |element|
      element = element.split('=')
      result[element[0]] = element[1]
    end
    result
  end
end