class CocktailsController < ApplicationController
  has_many :doses
  has_many :ingredients, through: :doses

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

end
