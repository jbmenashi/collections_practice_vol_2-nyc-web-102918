def begins_with_r (array)
  array.each do |element|
    if element[0] != "r"
      return false 
    else
      return true 
    end
  end
end