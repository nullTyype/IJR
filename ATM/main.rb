def welcome(storagew)
    puts "Welcome, write a value to be drawed: "
    value = gets.to_i
    puts  "Our current storage is #{storage}"
    value
end

#storage = {100 => 1, 50 => 2, 20 => 4, 10 => 8, 5 => 16, 1 => 32} <- (.to_a) hash to array convention

loop do
    storage = [[100, 1],[50, 2],[20, 4],[10, 8],[5, 16],[1, 32]]
    value = welcome(storage)

    def atm(value,storage,changes)
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
end

atm(value,storage,changes)
