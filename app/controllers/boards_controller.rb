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

    def create
        @board = Board.create 
        test 
        player_turn 
        puts "-----"
        puts "session[:column]: #{session[:column]}"
        puts "session[:counter]: #{session[:counter]}"
        puts "session[:odd_counter]: #{session[:odd_counter]}"
        puts "session[:even_counter: #{session[:even_counter]}"
        puts "session[:play]: #{session[:play]}"
        puts "session[:board]: #{session[:board]}"
        column = session[:column]
        session[:board][column.to_i][0] = "X"
        session[:board][column.to_i][1] = "O"
        puts session[:board]
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