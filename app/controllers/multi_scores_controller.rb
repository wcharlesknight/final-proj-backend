class MultiScoresController < ApplicationController
    skip_before_action :authorized

    def create
        multi_score = MultiScore.new(multi_score_params)
        multi_game = MultiGame.find(multi_score_params[:multi_game_id])
        # byebug
        if multi_score.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            MultiScoreSerializer.new(multi_score)
          ).serializable_hash
          MultiScoresChannel.broadcast_to multi_game, serialized_data
          head :ok
        end
      end
      
      private
      
      def multi_score_params
        params.require(:multi_score).permit(:points, :multi_game_id)
      end
    
  end
