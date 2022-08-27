require_relative 'logic.rb'
require_relative 'ui.rb'


welcome_msg(storage)

## loop start

loop do 
    atm(storage)
    puts "Our current storage is #{storage} \n\n"
end
