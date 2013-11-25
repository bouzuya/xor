class Logic

  def and(a, b)
    a && b
  end
  
  def or(a, b)
    a || b
  end
  
  def not(a)
    !a
  end

  def xor(a, b)
    c = self.not(self.and(a, b))
    d = self.not(self.and(a, c))
    e = self.not(self.and(b, c))
    self.not(self.and(d, e))
  end

end


