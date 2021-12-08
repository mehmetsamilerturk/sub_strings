dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(str, dictionary)
  str_array = str.downcase.split

  result = dictionary.map do |word|
    str_array.each_with_object(Hash.new(0)) do |v, a|
      a[word] += 1 if v.match?(word)
    end
  end

  result.delete_if(&:empty?)
  p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
