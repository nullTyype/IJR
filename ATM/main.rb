def option(storage)
    puts "Write a value to be drawed: "
    value = gets.chomp
    value
end

def atm(storage)
    value = option(storage)
    change = []
    i = 0

    while value > 0
        while value - storage[i][0] >= 0 && storage[i][1] > 0 && value.match(/:digit:/)
            if storage[i][1] - 1 >= 0
                value -= storage[i][0]
                storage[i][1] -= 1
                change << storage[i][0]
            else
                puts "We don't have infinity money! (or so?)" ## FIX THIS
            end
        end
        i+=1
    end
    puts "\n\n======================="
    puts "Your change is #{change}"
    puts "=======================\n\n"
end

storage = [[100, 1],[50, 2],[20, 4],[10, 8],[5, 16],[1, 32]]

puts "Welcome, our current storage is #{storage} \n\n"
loop do 
    atm(storage)
    puts "Our current storage is #{storage} \n\n"
end
