def caesar_cipher(string, shift = 3)
  alphabet   = Array('a'..'z')
  min  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet   = Array('A'..'Z')
  maj  = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = min.merge(maj)

  string.chars.map { |n| encrypter.fetch(n, " ") }
end

p caesar_cipher("What a string!", 5).join
