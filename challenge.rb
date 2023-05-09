
def balanced_brackets?(string)
  # your code here
  stack = []
  brackets = {
"(" => ")",
"[" => "]" ,
"{" => "}" 
  }

  string.each_char do |char|
    if(brackets.include?(char))
      stack << char
    else
      case char
      when ")"
        if stack.last == "("
          stack.pop
          break
        end
      when "]"
        if stack.last == "["
          stack.pop
          break
        end
      when "}"
        if stack.last == "{"
          stack.pop
          break
        end
      return false


      end
    
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
