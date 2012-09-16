class HomeController < ApplicationController
  def index
      @projects = Project.all
      @items = Item.all
  end
end
