char = File.read("input.txt")

i = 0
k = 1
length = char.length-1

 File.write("output.txt","", mode: "w")

for i in 0..length
    str = ""

    if char[i].match(/[[:alpha:]]/)
        if char[i] == char[i+1]
            k+=1
            i+=1
        else
            str << "#{k}#{char[i]} \s"
            k = 1
        end
    else
        if char[i] == char[i+1]
            k+=1
            i+=1
        else
            str << "#{k}-#{char[i]} \s"
            k = 1
        end
    end

    File.write("output.txt","#{str}", mode: "a")
end 