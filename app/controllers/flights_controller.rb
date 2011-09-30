class FlightsController < ApplicationController
  before_filter :find_rocket

  def show
    @flight = @rocket.flights.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @flight }
    end
  end

  def new
    @flight = @rocket.flights.new

    respond_to do |format|
      format.html
      format.json { render json: @flight }
    end
  end

  def edit
    @flight = @rocket.flights.find(params[:id])
  end

  def create
    @flight = @rocket.flights.new(params[:flight])

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: "Flight was successfully created." }
        format.json { render json: @flight, status: :created, location: @flight }
      else
        format.html { render action: "new" }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @flight = @rocket.flights.find(params[:id])

    respond_to do |format|
      if @flight.update_attributes(params[:flight])
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @flight = @rocket.flights.find(params[:id])

    @flight.destroy

    respond_to do |format|
      format.html { redirect_to @rocket }
      format.json { head :ok }
    end
  end

  private
  def find_rocket
    @rocket = Rocket.find(params[:rocket_id])
  end
end
