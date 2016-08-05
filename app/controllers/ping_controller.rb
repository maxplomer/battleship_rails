class PingController < ApplicationController

  #This route is called to keep heroku instance awake
  def ping
    render text: "Helloworld"
  end

end
