require 'cgi'
require 'pp'

class Hash
  def to_url_params
    elements = []
    self.each_pair do |key, value|
      url_node(key, value, elements)
    end
    elements.join('&')
  end
  
  private
    def url_node(key, value, elements, curr_path=nil)
      if value.class != Hash && value.class != Array && curr_path.nil?
        elements << "#{CGI::escape(key.to_s)}=#{CGI::escape(value.to_s)}"
      elsif value.class != Hash && value.class != Array
        elements << curr_path + CGI::escape("[#{key.to_s}]"+ '=' + CGI::escape(value.to_s))
      elsif value.class == Hash
        value.each_pair do |k, v|
          if curr_path.nil?
            node(k,v, elements, CGI::escape(key.to_s))
          else
            node(k,v, elements, curr_path + "[#{CGI::escape(key.to_s)}]")
          end
        end
      elsif value.class == Array
        value.each do |v|
          if curr_path.nil?
            node('',v, elements, CGI::escape(key.to_s))
          else
            node('',v, elements, curr_path + "[#{CGI::escape(key.to_s)}]")
          end
        end
      end
    end
end