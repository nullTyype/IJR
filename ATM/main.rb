def welcome
    print "Welcome, write a value to be drawed: "
    value = gets.to_i
    value
end

storage = {100 => 1, 50 => 2, 20 => 4, 10 => 8, 5 => 16, 1 => 32}

value = welcome

changes = [100,50,20,10,5,1]

def atm(value,storage,changes)
    change = []
    i = 0
    while value > 0
        while value - changes[i] >= 0
            value -= changes[i]
            change << changes[i]
        end
        i+=1
    end
    puts "Your change is #{change}"
end

atm(value,storage,changes)