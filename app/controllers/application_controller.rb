class ApplicationController < ActionController::Base
  def index
    @recipes = Recipe.all
  end
end
