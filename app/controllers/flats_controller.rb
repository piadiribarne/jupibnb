class FlatsController < ApplicationController
  def new
    @flat = Flat.new
  end
end

