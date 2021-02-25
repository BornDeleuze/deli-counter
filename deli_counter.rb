katz_deli = []
def take_a_number(katz_deli, new_customer)
    katz_deli << new_customer    
    puts "Welcome, #{new_customer}. You are number #{katz_deli.count} in line."

    
end

def line(katz_deli)
    place = []
    if katz_deli.count == 0
        puts "The line is currently empty."
    else
        number = 0
       katz_deli.each do |name|
        number += 1
        place << "#{number}. #{name}"
       end
        puts "The line is currently: #{place.join(" ")}"
    end
end

def now_serving(katz_deli)
    if katz_deli.count > 0
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    else
        puts "There is nobody waiting to be served!"
    end
end