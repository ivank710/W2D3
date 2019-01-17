class Array
  def my_uniq
    raise NoMethodError unless self.is_a?(Array)
    return [] if self.empty?

    hsh = Hash.new(0)
    self.each { |el| hsh[el] += 1 }
    result = []
    result.concat(hsh.keys)

    result
  end

  def two_sum
    raise NoMethodError unless self.is_a?(Array)
    return [] if self.empty?

    result = []

    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        el = self[i]
        el2 = self[j]

        result << [i, j] if el + el2 == 0
        j += 1
      end
      i += 1
    end

    result
  end

  def my_transpose
    raise NoMethodError unless self.is_a?(Array)
    return [] if self.empty?

    result = Array.new(self.length) { Array.new(self.length) }

    i = 0
    while i < self.length
      j = 0
      while j < self.length
        result[i][j] = self[j][i]
        j += 1
      end
      i += 1
    end

    result
  end

   def stock_picker
    raise NoMethodError unless self.is_a?(Array)
    return [] if self.empty?

    hsh = {}

    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        el = self[i]
        el2 = self[j]
        diff = el - el2

        hsh[diff] = [i, j]
        
        j += 1
      end
      i += 1
    end

    max = hsh.keys.max

    return hsh[max]
  end

end