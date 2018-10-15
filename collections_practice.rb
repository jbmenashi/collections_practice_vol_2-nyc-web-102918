require 'pry'

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
  return final_array
end

def first_wa (array)
  array.each do |element|
    if element[0] == "w" && element[1] == "a"
      return element
    end
  end
end
      
def remove_non_strings (array)
  final_array = []
  array.each do |element|
    if element == element.to_s
      final_array << element
    end
  end
  final_array
end
      
def count_elements(array)
  final_array = []
  array.each do |element|
    if final_array.include?(element)
      element[:count] += 1 
    else
      final_array << element
      element[:count] = 1
    end
  end
  final_array
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
      
      