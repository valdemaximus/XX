require 'cgi'
require 'pp'

class Hash
  # def to_url_params
  #   elements = []
  #   self.each_pair do |key, value|
  #     url_node(key, value, elements)
  #   end
  #   elements.join('&')
  # end
  
  
  def to_url_params
    elements = {}
    self.each_pair do |key, value|
      url_node(key, value, elements)
    end
    elements
  end
  
  private
    # def url_node(key, value, elements, curr_path=nil)
    #   if value.class != Hash && value.class != Array && curr_path.nil?
    #     elements << "#{CGI::escape(key.to_s)}=#{CGI::escape(value.to_s)}"
    #   elsif value.class != Hash && value.class != Array
    #     elements << curr_path + CGI::escape("[#{key.to_s}]"+ '=' + CGI::escape(value.to_s))
    #   elsif value.class == Hash
    #     value.each_pair do |k, v|
    #       if curr_path.nil?
    #         url_node(k,v, elements, CGI::escape(key.to_s))
    #       else
    #         url_node(k,v, elements, curr_path + "[#{CGI::escape(key.to_s)}]")
    #       end
    #     end
    #   elsif value.class == Array
    #     value.each do |v|
    #       if curr_path.nil?
    #         url_node('',v, elements, CGI::escape(key.to_s))
    #       else
    #         url_node('',v, elements, curr_path + "[#{CGI::escape(key.to_s)}]")
    #       end
    #     end
    #   end
    # end
    
    
    def url_node(key, value, elements, curr_path=nil)
      if value.class != Hash && value.class != Array && curr_path.nil?
        elements[key.to_s] = value.to_s
      elsif value.class != Hash && value.class != Array
        elements[curr_path + "[#{key.to_s}]"] = value.to_s
      elsif value.class == Hash
        value.each_pair do |k, v|
          if curr_path.nil?
            url_node(k,v, elements, key.to_s)
          else
            url_node(k,v, elements, curr_path + "[#{key.to_s}]")
          end
        end
      elsif value.class == Array
        value.each do |v|
          if curr_path.nil?
            url_node('',v, elements, key.to_s)
          else
            url_node('',v, elements, curr_path + "[#{key.to_s}]")
          end
        end
      end
    end
end