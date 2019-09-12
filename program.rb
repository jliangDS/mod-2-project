puts board = ['X',' ',' ',' ',' ',' ',' ',' ',' ']

def display_board
    puts row = ["   " "|" "   " "|" "   "]
    puts separator = "-----------"
    puts row
    puts separator
    puts row
end

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]}"
end

def input_to_index(user_input)
    user_input.to_i -1
end

def move(board, index, player)
    board[index] = player
end

def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
        return false
    else
        return true
    end
end

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
        return true
    end
end

def turn_count(board)
    counter = 0
    board.each do | spaces |
        if spaces == "X" || spaces == "O"
            counter += 1
        end
    end
    counter
end

def current_player(board)
    turn_count(board) % 2 == 0 ? "X" : "O"
end

def play(board)
    counter = 0
    until counter == 9
        turn(board)
        counter += 1
    end
end

def play(board)
    until over?(board)
        turn(board)
    end
    if won?(board)
        winner(board) == "X" || winner(board) == "O"
        puts "Congratulations #{winner(board)}!"
    elsif draw?(board)
        puts "Cats Game!"
    end
end

#until the game is over...
#players will keep taking turns
#plays the first few turns of the game
#if there's a winner...
    #we check who the winner is...
    #and congratulate them
#if there's a draw/tie, then print the message
display_board(board)
