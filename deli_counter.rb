# Write your code here.

katz_deli = []

def take_a_number(katz_deli, person)
  katz_deli << person
  puts "Welcome, #{person}. You are number #{katz_deli.size} in line."
end

def line(katz_deli)
  line = []
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |person, i|
      line << "#{i + 1}. #{person}"
    end
    puts "The line is currently: #{line.join(" ")}"
  end
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else 
    # until katz_deli.count == 0
    #   puts "Currently serving #{katz_deli.shift}."
    #   break
    # end
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end

