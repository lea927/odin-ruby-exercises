require 'pry-byebug'

def caesar_cipher(string, key)
  alpha_arr = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  index_arr = []
  # get index of each character from string
  # ignores whitespace
  # push index into a new array
  # encrypt new array using the key
  # use Z - A looping; when array reaches letter Z, it will resume counting from A
  # create contraints; A.) User enters non-letter characters
  string.split("").each do |s|
    alpha_arr.each_with_index do |letter,index|
      index_arr << index if s.casecmp? letter
    end
  end
  p index_arr
end

caesar_cipher('a b', 1)