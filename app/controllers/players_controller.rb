class PlayersController < ApplicationController
    skip_before_action :authorized

    def create
        player = Player.create(player_params)
        render json: player
    end

    private

    def player_params
        params.require(:player).permit(:name, :user_id, :multi_game_id)
    end

end
