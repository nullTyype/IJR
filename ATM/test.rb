#testing atm logic type convention

storage = {100 => 1, 50 => 2, 20 => 4, 10 => 8, 5 => 16, 1 => 32}

puts storage = storage.to_a
storage[0][1] += 1
puts storage

