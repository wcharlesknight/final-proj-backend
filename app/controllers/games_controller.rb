class GamesController < ApplicationController

    def create
        game = Game.create(game_params)
        render json: game
    end

    
    def leaders
        games = Game.all.max_by(10){ |x| x.score } 
        render json: games, include: :user 
    end

    private 

    def game_params
        params.require(:game).permit(:user_id, :score)
    end
end
