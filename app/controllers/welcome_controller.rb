class WelcomeController < ApplicationController
  def index
    flash[:warning] = "这是一个电影评论网站"
  end
end
