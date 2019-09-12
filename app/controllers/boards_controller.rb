class BoardsController < ApplicationController
    def new
    end

    def create
        puts "-------"
        puts params[:index]
        puts "-------"
        redirect_to new_board_path
    end
end