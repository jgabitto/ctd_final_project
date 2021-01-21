class RoomChannel < ApplicationCable::Channel
  def subscribed
    # p params[:user][:id]
    # @user = User.find(params[:user][:id])
    @user = User.find(params[:id])
    p params[:id]
    stream_for @user
    # stream_from "room_channel#{@user.id}"
  end

  def receive data
    locations = Location.near([data['body']['latitude'], data['body']['longitude']], 5)
    serialized_data = ActiveModelSerializers::SerializableResource.new(locations, include: options).as_json
    RoomChannel.broadcast_to(@user, serialized_data)
    # RoomChannel.broadcast_to("room_channel#{1}", data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def options
    ['user', 'location', 'user.driver', 'user.driver.cars', 'user.driver.cars.car_model']
  end
end
