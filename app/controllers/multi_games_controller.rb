class MultiGamesController < ApplicationController
    skip_before_action :authorized
    
    def index
        multi_games = MultiGame.all
        render json: multi_games
    end

    def show
      multi_game = MultiGame.find(params[:id])
      render json: MultiGameSerializer.new(multi_game)
    end

    def create
      multi_game = MultiGame.new(multi_game_params)
      if multi_game.save
       serialized_data = ActiveModelSerializers::Adapter::Json.new(
         MultiGameSerializer.new(multi_game)
       ).serializable_hash
       ActionCable.server.broadcast "multi_#{multi_game.id}", serialized_data
       head :okwq
     end
     
    end

   def multi_game_params
        params.require(:multi_game).permit(:result, :multi_scores, :players)
   end

end 