def begins_with_r (array)
  array.each do |element|
    if element[0] != "r"
      return false 
    end
  end
  return true
end