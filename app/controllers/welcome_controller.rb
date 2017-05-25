class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Good morning！"
  end
end
