class GamesController < ApplicationController

    def create
        game = Game.create(game_params)
        render json: game
    end

    
    def leaders
        games = Game.all.max_by(10){ |x| x.score } 
        render json: games, include: :user 
    end

    def multiplayer 
        game = Game.new(game_params)
        if game.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            GameSerializer.new(game)
          ).serializable_hash
          ActionCable.server.broadcast 'games_channel', serialized_data
          head :ok
        end
    end

    private 

    def game_params
        params.require(:game).permit(:user_id, :score, :multi_scores)
    end
end
