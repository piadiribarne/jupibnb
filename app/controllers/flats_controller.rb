class FlatsController < ApplicationController

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    respond_to do |format|
      if @flat.save
        format.html { redirect_to @flat, notice: 'Flat was successfully created.' }
        format.json { render :show, status: :created, location: @flat }
      else
        format.html { render :new }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end

  end

  def show
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:city, :description, :availability, :picture)
  end

  def destroy
  @flat = Flat.find(params[:id])
   @flat.destroy
   respond_to do |format|
     format.html { redirect_to root_path, notice: 'flat was successfully deleted.' }
     format.json { head :no_content }
   end
 end

end

