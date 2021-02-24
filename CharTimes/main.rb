char = File.read("entrada.txt")

i = 0
k = 1
for i in 0..char.length 
    if char[i] == char[i+1]
        puts "#{k}#{char[i]}"
        k+=1
        i+=1
    elsif char[i] != char[i+1]
        puts "#{k}#{char[i]}"
        k = 0
    end
end 