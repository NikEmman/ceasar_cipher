def caesar_cipher(string, number)
  char_array = string.split('')
  char_array.map! { |char| char.ord }
  char_array.map! do |char|
    if char < 64
      char + 0
    elsif (char > 96 && char + number > 122) || (char > 64 && char < 91 && char + number > 90)
      char + number - 26
    else
      char + number
    end
  end
  char_array.map! { |char| char.chr }
  char_array.join('')
end
# caesar_cipher('In knowing the teachings of Zerthimon I have become stronger', 5)
