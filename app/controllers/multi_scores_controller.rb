class MultiScoresController < ApplicationController

    def create
        multi_score = MultiScore.new(mulit_score_params)
        game = Game.find(mulit_score_params[:game_id])
        if multi_score.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            MultiScoreSerializer.new(multi_score)
          ).serializable_hash
          MultiScoresChannel.broadcast_to game, serialized_data
          head :ok
        end
      end
      
      private
      
      def mulit_score_params
        params.require(:multi_score).permit(:points, :game_id)
      end
    end
end
