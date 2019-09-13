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
        
        column = session[:column]
        session[:board][column.to_i][0] = "X"
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