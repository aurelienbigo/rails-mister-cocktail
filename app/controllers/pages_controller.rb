class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.order("RANDOM()").first(3)
  end
end
