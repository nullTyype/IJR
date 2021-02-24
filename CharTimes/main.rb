char = File.read("entrada.txt")

i = 0
k = 1
length = char.length-1
for i in 0..length
    if char[i] == char[i+1]
        File.write("saida.txt","#{k}#{char[i]}", mode: "a")
        k+=1
        i+=1
    else
        File.write("saida.txt","#{k}#{char[i]}", mode: "a")
        k = 1
    end
end 