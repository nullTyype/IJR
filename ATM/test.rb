storage = {100 => 1, 50 => 2, 20 => 4, 10 => 8, 5 => 16, 1 => 32}

storage = storage.to_a
puts storage[0][1] = 2
puts storage

