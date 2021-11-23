# To-do:
# keep the same case
require 'pry-byebug'

def is_lower?(letter)
  return true if letter =~ /[a-z]/ 
  return false if letter !=~ /[a-z]/
end

def caesar_cipher(input, key)
  @alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  @key = key
  @input = input
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
  p retain_case = encrypted.join('').gsub(/\w/) { |letter|
    
  }
end

caesar_cipher("What a string!", 5)