class WelcomeController < ApplicationController
  def index
    flash[:warning] = "Jude，你不可以如此英俊！"
  end
end
