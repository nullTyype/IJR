## total storage capacity storage

storage = [[100, 1],[50, 2],[20, 4],[10, 8],[5, 16],[1, 32]]
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