class MultiScoresController < ApplicationController
    skip_before_action :authorized

    def create
      
        byebug
        multi_score = MultiScore.new(multi_score_params)
        multi_game = MultiGame.find(multi_score_params[:multi_game_id])
        print("#{multi_game} #{multi_score}")
        if multi_score.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            MultiScoreSerializer.new(multi_score)
          ).serializable_hash
          ActionCable.server.broadcast "multi_#{multi_game.id}", serialized_data
          # MultiScoresChannel.broadcast_to multi_game, serialized_data
          head :ok
        end
      end
      
      private
      
      def multi_score_params
        params.require(:multi_score).permit(:points, :multi_game_id, :player_id, :player_name)
      end
    
  end
