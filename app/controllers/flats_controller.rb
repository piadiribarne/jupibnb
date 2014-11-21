class FlatsController < ApplicationController

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

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
    if @flat.user == current_user
      @flat.destroy
      redirect_to root_path, notice: 'flat was successfully deleted.'
    else
      redirect_to root_path, alert: 'you do not own this flat.'
    end
 end

end

