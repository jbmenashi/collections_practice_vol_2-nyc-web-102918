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
    element[:count] = 1
    if final_array.include?(element)
      final_array.delete(element)
      element[:count] += 1 
    end
      final_array << element
  end
  final_array
end



# :keys
#     [{:first_name => "blake"},
#       {:first_name => "ashley"}]
# :data
#     [{"blake" => {:awesomeness => 10,:height => "74",:last_name => "johnson"},
#       "ashley" => {:awesomeness => 9,:height => 60,:last_name => "dubs"}}]
      
def merge_data (keys, data)
  final_array = []
  keys.each do |hash|
    data.each do |data_hash|
      data_hash.each do |data_key, data_values|
        if hash[:first_name] == data_key
          final_array << hash.merge(data_values)
        end
      end
    end
  end
  final_array
end
  
  
def find_cool(array)
  final_array = []
  array.each do |hash|
    if hash.values.include?("cool")
      final_array << hash
    end
  end
  final_array
end

# schools = {
# "flatiron school bk" => {:location => "NYC"},
# "flatiron school" => {:location => "NYC"},
# "dev boot camp" => {:location => "SF"},
# "dev boot camp chicago" => {:location => "Chicago"},
# "general assembly" => {:location => "NYC"},
# "Hack Reactor" => {:location => "SF"}
# }
  
def organize_schools(schools)
  new_hash = {}
  schools.each do |school_name, school_data|
    school_data.each do |key, school_location|
      if new_hash[school_location] == nil
        new_hash[school_location] = []
      end
      new_hash[school_location] << school_name
    end
  end
  new_hash
end
  
      
      