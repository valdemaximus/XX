class NilClass
  def not_nil?
    false
  end
  
  def include?(o)
    false
  end
  
  def empty?
    true
  end
  
  def not_empty?
    false
  end
  
  def length
    0
  end
  
  alias :blank? :empty?
  alias :not_blank? :not_empty?
end