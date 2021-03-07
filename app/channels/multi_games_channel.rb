class MultiGamesChannel < ApplicationCable::Channel
  def subscribed

    stream_from "multi_#{params['id']}"
  end

  # def receive(data)
  #   byebug
  #   ActionCable.server.broadcast("multi_#{params[:id]}", data)
  # end 

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
