class Object
  def deep_copy
    Marshal.load(Marshal.dump(self))
  end
  
  def not_nil?
    self != nil
  end
end