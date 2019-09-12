board = [[nil, nil, nil, nil, nil, nil], [nil,nil,nil,nil,nil,nil], [nil,nil,nil,nil,nil,nil], [nil,nil,nil,nil,nil,nil], [nil,nil,nil,nil,nil,nil], [nil,nil,nil,nil,nil,nil], [nil,nil,nil,nil,nil,nil]]

puts board


board2 = []

temp = []

6.times do
    board2.push(nil)
end

7.times do
    board2.push(temp)
end

puts "THIS IS BOARD 2: #{board2}"
puts "-----------------------------"
puts "THIS IS BOARD 1: #{board}"

player_turn = 1 #player 1 is odd, player 2 is even. and this number increases every turn

counter = 0 #just a counter for counting evens/odds in our iteration.

user_input.to_i = gets.chomp
board[user_input][x] != nil
board.each do |column|
    column.each do |row|
        puts "[#{column}, #{row}]"
    #logic
    #is it empty? (nil?)
    #what is the value?
    #call the function that tests for connect4
    end

end

binding.pry
0
#User should be able to pick a COLUMN and drop a token as far down as possible

