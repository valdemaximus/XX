module HashKey
  def hash_key
    self.id.to_s(36)
  end
end