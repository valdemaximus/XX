class String
  def not_empty?
    not empty?
  end
  
  alias :not_blank? :not_empty?
end