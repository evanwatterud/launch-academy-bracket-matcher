def bracket_match?(string)
  characters = string.split('')
  left_brackets, right_brackets = 0, 0
  stack = []

  characters.each do |character|
    if character == '('
      stack.push(character)
    elsif character == ')'
      return false if stack.empty?
      stack.pop
    end
  end
  stack.empty?
end

puts bracket_match?("Hi! What is your name again (I forgot)?")
puts bracket_match?("Hi! What is (your name again? I forgot")
puts bracket_match?("sdf)(sdfsfs)(")
puts bracket_match?("(((())))")
puts bracket_match?("(sdf(dsfs(fs))()")
