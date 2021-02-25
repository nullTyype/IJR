char = File.read("output.txt").split("\s")

text = ""
length = char.length-1
for i in 0..length
    if char[i][2]
        text << char[i][2]
    else
        text << char[i][1]
    end
end
puts text