class MessagesController < ApplicationController
  def greeting
    @random_greeting = Message.all.order('RANDOM()').first

    render json: @random_greeting
  end
end
