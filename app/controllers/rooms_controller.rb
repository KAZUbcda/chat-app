class RoomsController < ApplicationController
  # newアクション定義
  def new
    @room = Room.new
  end
end
