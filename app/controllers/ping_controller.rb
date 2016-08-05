class PingController < ApplicationController

  def ping
    render text: "Helloworld"
  end

  def secured_ping

  end

end
