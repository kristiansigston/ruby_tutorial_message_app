class ChatroomController < ApplicationController
  before_action :require_user
  
  def new
  end

  def index
    @message = Message.new
    @messages = Message.custom_display
  end
end
