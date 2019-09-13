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

    @@player_turn = 0



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