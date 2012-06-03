#!/usr/bin/env ruby
def human(str)
  str.gsub(/\*\*/,"^")
end

def bits
  Input.length
end
def validate
  unless Input =~ /\A[01]+\Z/
    puts "Wrong input format, need only binary input"
    exit
  end
end


Input = ARGV[0].gsub(/\A0*/,'')
validate

puts "Binary: #{Input}"
puts "#{bits} bits"

result = [] 
i = 0
Input.reverse.each_char do |c|
  result.unshift "(#{c.to_i}*2**#{i})"
  i+=1
end


result = result.join("+")
puts human(result)
puts "Result is: #{eval(result)}"
