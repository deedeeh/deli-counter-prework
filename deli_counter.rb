# Write your code here.

katz_deli = []

def take_a_number(katz_deli, person)
  katz_deli << person
  puts "Welcome, #{person}. You are number #{katz_deli.size} in line."
end

# def line(katz_deli)
#   line = []
#   if katz_deli.empty?
#     puts "The line is currently empty."
#   else
#     katz_deli.each_with_index do |person, index|
#       line << "#{index + 1}. #{person}"
#     end
#     puts "The line is currently: #{line.join(" ")}"
#   end
# end

def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else 
    until katz_deli.count == 0
      puts "Currently serving #{katz_deli.shift}."
      break
    end
  end
end

