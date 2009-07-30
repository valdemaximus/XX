class Array
  def uniq_by_key(key_name)
    keys = []
    self.reject do |m|
      key = m.send(key_name.to_s)
      unless keys.include?(key)
        keys << key
        false
      else
        true
      end
    end
  end
end