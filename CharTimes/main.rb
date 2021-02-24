char = File.read("entrada.txt")

i = 0
k = 1
length = char.length-1
for i in 0..length
    if char[i] == char[i+1]
        puts "#{k}#{char[i]}"
        k+=1
        i+=1
    else
        puts "#{k}#{char[i]}"
        k = 1
    end
end 