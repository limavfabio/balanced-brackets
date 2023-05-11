
def balanced_brackets?(string)
  # your code here
  stack = []
  brackets = {
"(" => ")",
"[" => "]" ,
"{" => "}" 
  }

  string.each_char do |char|
    if brackets.key?(char)
      stack << char
    elsif brackets.value?(char)
      return false if brackets[stack.pop] != char
    end
  end
  return stack.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
