# To-do:
# keep the same case
require 'pry-byebug'

def caesar_cipher(input, key)
  @alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  @key = key
  encrypted = input.split("").map { |content|
    content.gsub(/\w/) { |string|
      def convert(string) 
        @alphabet.each_with_index do |letter,index|
          if string.casecmp? letter
            position = index + @key
            position = position - (@alphabet.length) if position > 25
            return @alphabet[position]
          end
        end
      end
      string = convert(string)
    }
  }
  p encrypted
end

caesar_cipher("What a string!", 5)