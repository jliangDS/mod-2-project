class BoardsController < ApplicationController
    def index
    end

    def test
        session[:column] = params[:column]
        session[:player_turn] = 1
        session[:counter] = 0
        session[:odd_counter] = 0
        session[:even_counter] = 0
        session[:play] = true
    end

    def player_turn
        session[:column] = params[:column]



 
    end

    def vertical_win
        x = 0
        y = 0
        odd_counter = 0
        even_counter = 0
        test_row = true

        puts "session[:board][x][y]: #{session[:board][x][y]}"
        puts "session[:board][1][0]: #{session[:board][1][0]}"
        puts "session[:board][2][0]: #{session[:board][2][0]}"
        puts "session[:board][3][0]: #{session[:board][3][0]}"

        if session[:board][x][y] != nil
            if session[:board][x][y] % 2 == 0
                puts "session[:board][#{x}][#{y}] is player 1"
                odd_counter = 0
                even_counter += 1
            else 
                puts "session[:board][#{x}][#{y}] is player 2"
                even_counter = 0
                odd_counter += 1 
            end
            
        end

        # while test_row == true
        #     if session[:board][x][y] != nil
        #         if session[:board][x][y] % 2 == 0
        #             puts "session[:board][x][y]: is an even number"
        #             odd_counter = 0
        #             even_counter += 1
        #         else
        #             puts "session[:board][x][y]: is an odd number"
        #             even_counter = 0
        #             odd_counter += 1
        #         end

        #         if even_counter == 4 || odd_counter == 4
        #             puts "a player wins"
        #             break
        #         else
        #             puts "no player has won"
        #         end
        #     end
        #     x += 1
        #     if y == 6
        #         y += 1
        #         x = 0
        #         if y == 5
        #             test_row = false 
        #         end
        #     end
        # end    
    end

    def create
        @board = Board.create 
        user_input = params[:column].to_i
        counter = 0
        found = false


        while counter < 6 && !found
            puts "counter is: #{counter}"
            #found = false

            puts "session[:board][user_input] is: #{session[:board][user_input]}"
            puts "session[:board][user_input].class is: #{session[:board][user_input].class}"
            puts "session[:board][user_input][counter] is: #{session[:board][user_input][counter]}"
            if session[:board][user_input][counter] == nil && !found
                session[:board][user_input][counter] = @@player_turn
                puts "@@player_turn: #{@@player_turn}"
                found = true
            end
            counter += 1 
        end

        @@player_turn += 1

        vertical_win

        # while counter < 6 && found = false do
            # byebug
            # puts counter
            # if session[:board][user_input][counter] == nil && found = false 
            #     session[:board][user_input][counter] = @@player_turn
            #     found = true
                
            # end
            # counter += 1
            # found = true 
        # end
        
        # puts "----"
        # puts user_input
        # puts session[:board][user_input]
        # puts @@player_turn
        # puts session[:board][user_input][counter]
        # puts counter

        # count = 0
        # found = false
        # session[:column] = params[:column]
        # column = session[:column]
        # while count < 6 && found = false
        #     if session[:board][column.to_i][count] == nil && session[:board][column.to_i][count - 1] = "O"
        #         session[:board][column.to_i][count + 1] = "O"
        #         count += 1
        #         found = true 
        #     end
        # end

        # puts "-----"
        # puts session[:board][column.to_i][count]
        

        # session[:board].each do |column|
        #     column.each do |row|
        #         if row == nil 
        #         row = "X"
        #         end
        #     end
        # end
        redirect_to board_url(@board)
    end 

    def new
        @@player_turn = 0
    end 

    def edit
    end

    def show
    end

    def update
    end

    def destroy
    end
end