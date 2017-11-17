def menu
  puts
  puts
  puts "Enter a word to see if it is a palindrome!"
  puts "Do not use special characters!"
  puts
  puts
  puts "Type 'Quit' to exit."
  word = gets.gsub(/\s+/, "").downcase

  case word
    when "quit"
    exit
    else reverse_string(word)
  end
end

def reverse_string(word)
  indexword = word.split("")
  reversed = []
  word.size.times { reversed << indexword.pop }
  word2 = reversed.join
  reveal(word2, word)
end

def reveal(word2, word)
if word2 == word
  p 'ITS A PALINDROME'
  menu
else
  p 'ITS NOT A PALINDROME'
  menu
end
end

menu