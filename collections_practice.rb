

def begins_with_r (array)
  array.each do |element|
    if element[0] != "r"
      return false 
    end
  end
  return true
end

def contain_a (array)
  final_array = []
  array.each do |element|
    letter_array = element.split("")
    letter_array.each do |letter|
      if letter == "a"
        final_array << element
      end
    end
  end
end