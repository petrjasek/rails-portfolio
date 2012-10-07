class HomeController < ApplicationController
  def index
      @projects = Project.all
      @news = News.all
  end
end
