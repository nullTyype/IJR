require_relative "ui.rb"


## basic atm func

def option(storage)
    request_value
    value = gets.to_i
    value
end

def atm(storage)
    value = option(storage)
    change = []
    i = 0

    while value > 0
        while value - storage[i][0] >= 0 && storage[i][1] > 0 && value.to_s.match(/[[:digit:]]/)
            if storage[i][1] - 1 >= 0
                value -= storage[i][0]
                storage[i][1] -= 1
                change << storage[i][0]
            else
                advice_msg ## FIX THIS
            end
        end
        i+=1
    end
    change_msg(change)
end

## total storage capacity storage

i = 0
j = 0
total = 0

def totalCapacity
    while i < 6
        total += storage[i][0] * storage[i][1]

        j += 1
        i += 1

        puts total
    end
    total
end

## loop definition

def init
    storage = [[100, 1],[50, 2],[20, 4],[10, 8],[5, 16],[1, 32]]
    welcome_msg(storage)
    loop do 
        atm(storage)
        current_storage(storage)
    end    
end