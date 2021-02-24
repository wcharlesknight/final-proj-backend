class GamesController < ApplicationController

    def create
        render json: Game.create(game_params)
    end

    def game_params
        params.require(:game).permit(:user_id, :score_id)
    end
end
