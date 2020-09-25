def substrings (string, dictionary)
    string = string.downcase.split(' ')
    dictionary.each_with_object(Hash.new(0)) do |substring, result|
        string.each {|word| result[substring] += 1 if word.include?(substring)}
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)