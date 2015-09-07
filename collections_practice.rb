require 'pry'

def begins_with_r(array)
    array.all? { |element| element[0] == "r" }
    #  Return true if every element of the tools array starts with an "r" and false otherwise.
    #  should return false if there's an element that does not begin with r
end

def contain_a (array)
    array.select { |element| element.include?('a') }
  #  return all elements that contain the letter 'a'
end

def first_wa (array)
  array.find { |element| element.to_s.include?('wa')}
  #  Return the first element that begins with the letters 'wa'
end

def remove_non_strings (array)
  array.delete_if { |element| element.class != String }
  # array.reject! { |element| element.class != String }
  # array.select { |element| element.class == String }
  # remove anything that's not a string from an array
end

def count_elements (array)
  new_array = [ ]
  array.uniq.each do |element|
    element[:count] = array.count(element)
    new_array << element
  end
  new_array
  # count how many times something appears in an array
end

def merge_data(keys,data)
  array = []
  keys.each do |key_hash|
    key_hash.each do |key,value|
      data[0][value] = Hash[key,value].merge!(data[0][value])
      array << data[0][value]
    end
  end
  array
  # combines two nested data structures into one
end

def find_cool (array)
  array.select { |hash| hash.has_value?("cool")}
  # find all cool hashes
end

def organize_schools(schools_hash)

  # change schools_hash
  schools_hash.each do |school_name,school_location|
    school_location.each do |label,city|
      schools_hash[school_name] = city
    end
  end

  #  organizes the schools by location
  schools_hash.each_with_object({}) do |(k,v), result|
      result[v] ||= []
      result[v] << k
  end
end
