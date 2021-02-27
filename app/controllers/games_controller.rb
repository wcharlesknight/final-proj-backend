class GamesController < ApplicationController

    def create
        game = Game.create(game_params)
        render json: game
    end

    def game_params
        params.require(:game).permit(:user_id, :score)
    end
end
