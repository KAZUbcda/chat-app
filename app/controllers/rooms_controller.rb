class RoomsController < ApplicationController
  # newアクション定義
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # ここから下メソッドprivate
  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
