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
end