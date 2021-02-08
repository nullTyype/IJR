def welcome(storage)
    puts "Write a value to be drawed: "
    value = gets.to_i
    value
end

def atm(storage)
    value = welcome(storage)
    change = []
    i = 0

    while value > 0
        while value - storage[i][0] >= 0
            value -= storage[i][0]
            change << storage[i][0]
            storage[i][1] -= 1
        end
        i+=1
    end
    puts "Your change is #{change}"
end

storage = [[100, 1],[50, 2],[20, 4],[10, 8],[5, 16],[1, 32]]
loop do 
    atm(storage)
    puts "Out current storage is #{storage}"
end
