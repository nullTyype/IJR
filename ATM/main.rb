def welcome
    print "Welcome, write a value to be drawed: "
    value = gets.to_i
    value
end

storage = {100 => 1, 50 => 2, 20 => 4, 10 => 8, 5 => 16, 1 => 32}

value = welcome

def atm(value,storage)
    change = []
    while value > 0
        if value -100 >= 0
            change << 100
            value -= 100
            puts "Your actual change is #{change}"
            sleep 0.5
        elsif value -50 >= 0
            change << 50
            value -= 50
            puts "Your actual change is #{change}"
            sleep 0.5
        elsif value -20 >= 0
            change << 20
            value -= 20
            puts "Your actual change is #{change}"
            sleep 0.5
        elsif value -10 >= 0 
            change << 10
            value -= 10
            puts "Your actual change is #{change}"
            sleep 0.5
        elsif value -5 >= 0 
            change << 5
            value -= 5
            puts "Your actual change is #{change}"
            sleep 0.5
        elsif value -1 >= 0
            change << 1
            value -= 1
            puts "Your actual change is #{change}"
        end
    end
end


atm(value,storage)