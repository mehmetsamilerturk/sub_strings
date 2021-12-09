dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(str, dictionary)
  str_array = str.downcase.split

  result = dictionary.map do |word|
    str_array.each_with_object(Hash.new(0)) do |value, obj|
      obj[word] += 1 if value.match?(word)
    end
  end

  result.delete_if(&:empty?)
  result.reduce({}, :merge)
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
