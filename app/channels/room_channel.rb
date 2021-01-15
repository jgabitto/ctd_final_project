class RoomChannel < ApplicationCable::Channel
  def subscribed
    # p params[:user][:id]
    @user = User.find(params[:user][:id])
    # stream_for @user
    stream_from "room_channel#{@user.id}"
  end

  def received data
    # RoomChannel.broadcast_to(@user, {user: @user })
    RoomChannel.broadcast_to("room_channel#{@user.id}", data: "hello")
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
