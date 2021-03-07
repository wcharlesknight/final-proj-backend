class PlayersController < ApplicationController
    skip_before_action :authorized

    def create
        player = Player.new(player_params)
        multi_game = MultiGame.find(player_params[:multi_game_id])
        # byebug
        if player.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            PlayerSerializer.new(player)
          ).serializable_hash
          PlayersChannel.broadcast_to multi_game, serialized_data
          head :ok
        end
      end

    private

    def player_params
        params.require(:player).permit(:name, :user_id, :multi_game_id)
    end

end
