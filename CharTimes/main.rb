char = File.read("entrada.txt")


k = 1
for i in 0..char.length do
    #k = 1
    if char[i] == char[i+1]
        puts "#{k}#{char[i-1]}"
        k+=1
    end
end
