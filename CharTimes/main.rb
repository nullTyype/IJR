char = File.read("input.txt")

i = 0
k = 1
length = char.length-1
for i in 0..length
    str = ""
    File.read("output.txt") == " " ? mode= "a" : mode= "a"

    if char[i] == char[i+1]
        str << "#{k}#{char[i]}"
        k+=1
        i+=1
    else
        str << "#{k}#{char[i]}"
        k = 1
    end
    File.write("output.txt","#{str}", mode: mode)
end 