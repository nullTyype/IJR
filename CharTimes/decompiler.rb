char = File.read("output.txt").split("\s")

text = ""
length = char.length-1
for i in 0..length
    for j in 1..char[i][0].to_i
        if char[i][2]
            text << char[i][2]
        else
            text << char[i][1]
        end
    end
end
puts text