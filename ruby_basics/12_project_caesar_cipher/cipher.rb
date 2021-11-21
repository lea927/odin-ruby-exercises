require 'pry-byebug'

def caesar_cipher(input, key)
  @alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  # alpha_arr_2 = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  index_arr = []
  # get index of each character from string
  # ignores whitespace
  # push index into a new array
  # encrypt new array using the key
  # use Z - A looping; when array reaches letter Z, it will resume counting from A
  # create contraints; A.) User enters non-letter characters
  encrypted_string = input.split("").map { |content|
    content.gsub(/\w/) { |string|
      def convert(string) 
        @alphabet.each_with_index do |letter,index|
          if string.casecmp? letter
            return index
          end
        end
      end
      string = convert(string)
    }
  }
  p encrypted_string
end

caesar_cipher('Bac a', 2)