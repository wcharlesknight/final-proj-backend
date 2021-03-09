class PlayersController < ApplicationController
    skip_before_action :authorized

    def create
        player = Player.new(player_params)
        multi_game = MultiGame.find(player_params[:multi_game_id])
        if player.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            PlayerSerializer.new(player)
          ).serializable_hash
          ActionCable.server.broadcast "multi_#{multi_game.id}", serialized_data
          head :ok
        end
      end
    
    def destroy
      player = Player.find(params[:id])
      player.destroy
    end

    private

    def player_params
        params.require(:player).permit(:name, :user_id, :multi_game_id)
    end

end
