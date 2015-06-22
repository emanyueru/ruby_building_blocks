# Simple implementation of Caesar's Cipher encryption
# using the % operator for clock arithmetic to
# stay within the index range of the alphabet array

def caesar(str, shift)

  alpha = ('a'..'z').to_a
  cipher = []

  str.split("").map do |char|

    if alpha.include? char

      char_index = (alpha.index(char) + shift) % 26

      cipher << alpha[char_index]

    elsif alpha.include? char.downcase

      char_index = (alpha.index(char.downcase) + shift) % 26

      cipher << alpha[char_index].upcase


    else

      cipher << char

    end

  end

  cipher.join

end

puts "Hello world"
puts caesar "Hello World", 1