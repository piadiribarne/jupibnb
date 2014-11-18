class HomeController < ApplicationController
  def index
    @flats = Flat.all
  end
end
