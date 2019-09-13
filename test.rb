require 'pry'

#=========================== setting up the board

#   board consists of 6 rows and 7 columns
#   [[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5]] our data looks something like this mess
$player_turn = 1 #player 1 is odd, player 2 is even. and this number increases every turn
counter = 0 #just a counter for counting evens/odds in our iteration.
play = true

$board = [[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil]]

puts "press [enter] to continue"
gets.chomp
#============================================================




#============================ FUNCTION FACTORY ================================

#   We probably want some functions that DISPLAY, CHANGE, and CHECK FOR WIN CONDITIONS

#   DISPLAY - shows the board
def show_board
    puts "\n\n"
    $board.each_with_index do |a,ai|
        # count = 0
        a.each_with_index do |b,bi|
            print "| #{$board[ai][bi]} |"
            # count += 1
        end
        puts "\n------------------------------\n\n"
    end
end
def start_over
    $board = [[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil], [nil,nil,nil,nil,nil,nil]]
    odd_counter = 0
    even_counter = 0
end 

#   CHECK - prompt the user to select a column
def player_turn
    show_board
    #   prompt the user for a column
    puts "select a column (0-6)"
    user_input = gets.chomp.to_i

    #   use user_input to represent the column in our 2d Array
    
    counter = 0
    found = false

    while counter < $board[user_input].length && found == false do
        puts "found is #{found}"
        puts "counter is #{counter}"
        
        if $board[user_input][counter] == nil && !found
            puts "$board[#{user_input}][#{counter}]:#{$board[user_input][counter]} is being assigned the value = #{$player_turn}"
            $board[user_input][counter] = $player_turn
            found = true
        end
        
        counter += 1
        puts "counter is now #{counter}!!!!!!"
    end

    $player_turn += 1
    puts "player has made a move!!"

    

end
#============================
def vertical_win
    puts "inside vertical_win"
    x = 0
    y = 0
    odd_counter = 0
    even_counter = 0
    test_row = true 
    while test_row == true
        if $board[x][y] != nil
            if $board[x][y]%2 == 0
                puts "hit an even number!! ODD RESET!"
                odd_counter = 0
                even_counter += 1
            else
                puts "hit an odd number!! EVEN RESET!"
                even_counter = 0
                odd_counter += 1
            end

            puts "even_counter: #{even_counter}"
            puts "odd_counter: #{odd_counter}"

            if odd_counter == 4 || even_counter == 4
                puts "somebody won vertically !!"
                start_over 
                break 
            else
                puts "no one won yet..."
            end 
        end 
        x += 1
        if x == 6
            y += 1
            x = 0
            if y == 5 
                test_row = false
            end 
            
        end 
    end 
end
def horizontal_win
    puts "inside horizontal_win"
    x = 0
    y = 0
    odd_counter = 0
    even_counter = 0
    test_row = true 
    while test_row == true
        if $board[x][y] != nil
            if $board[x][y]%2 == 0
                puts "hit an even number!! ODD RESET!"
                odd_counter = 0
                even_counter += 1
            else
                puts "hit an odd number!! EVEN RESET!"
                even_counter = 0
                odd_counter += 1
            end

            puts "even_counter: #{even_counter}"
            puts "odd_counter: #{odd_counter}"

            if odd_counter == 4 || even_counter == 4
                puts "somebody won horizontally!!"
                start_over 
                break
            else
                puts "no one won yet..."
            end 
        end 
        y += 1
        if y == 5
            x += 1
            y = 0
            if x == 6 
                test_row = false
            end 
            
        end 

    end 
            
end 
def diagonal_win
end 
def start_over
    $board = [[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil,nil]]
    odd_counter = 0
    even_counter = 0
end 
# ======= PLAYING THE GAME HERE =======
puts "playing the game now!!"
while play == true do
    
    player_turn
    vertical_win
    horizontal_win
    #check for win condition
    
   
end
show_board 
player_turn