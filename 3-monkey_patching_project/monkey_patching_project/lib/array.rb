# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span 
    return nil if self.empty?
    self.max - self.min
  end
#   ---------------------------------------------------------------
def average
    return nil if self.empty?
    self.sum / self.length.to_f
end
# -------------------------------------------------------------------
def median

    return nil if self.empty?
    if self.length.odd?
        return self.sort[(self.length-1) /2]
    else
        return  (self.sort[(self.length)/2] + self.sort[((self.length)/2) -1]) /2.0
    end
end
# --------------------------------------------------------------------------------------
def counts
    return {} if self.empty?
    hash = Hash.new(0)
    self.each {|element| hash[element] += 1}
    hash
end
def my_count (value)
    count=0
    self.each {|ele| count+=1 if ele==value}
    count
end
# --------------------------------------------------------------------------------------
def my_index(value)
    return nil if !self.include?(value)
    self.each_with_index {|ele,i| return i if ele == value}
      
end
# -------------------------------------------------------------------------------------
def my_uniq
    arr=[]
    self.each {|ele|  arr<<ele if !arr.include?(ele)}
    arr
end
# ------------------------------------------------------------------------------------------
def my_transpose        # [["a", "b", "c"],["d", "e", "f"],["g", "h", "i"]]
                        # [["a", "d", "g"], ["b", "e", "h"], ["c", "f", "i"] ]

    arr=Array.new(self.length) {Array.new(self[0].length)}
    self.each_with_index do |row,i|
        row.each_with_index do |ele,j|
            arr[j][i]=ele
        end
    end
    arr
end
end
