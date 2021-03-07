class PlayersChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    multi_game = MultiGame.find(params[:multi_game_id]) 
    stream_for multi_game
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
