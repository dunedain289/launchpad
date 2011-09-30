class RocketsController < ApplicationController
  # GET /rockets
  # GET /rockets.json
  def index
    @rockets = Rocket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rockets }
    end
  end

  # GET /rockets/1
  # GET /rockets/1.json
  def show
    @rocket = Rocket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rocket }
    end
  end

  # GET /rockets/new
  # GET /rockets/new.json
  def new
    @rocket = Rocket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rocket }
    end
  end

  # GET /rockets/1/edit
  def edit
    @rocket = Rocket.find(params[:id])
  end

  # POST /rockets
  # POST /rockets.json
  def create
    @rocket = Rocket.new(params[:rocket])

    respond_to do |format|
      if @rocket.save
        format.html { redirect_to @rocket, notice: 'Rocket was successfully created.' }
        format.json { render json: @rocket, status: :created, location: @rocket }
      else
        format.html { render action: "new" }
        format.json { render json: @rocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rockets/1
  # PUT /rockets/1.json
  def update
    @rocket = Rocket.find(params[:id])

    respond_to do |format|
      if @rocket.update_attributes(params[:rocket])
        format.html { redirect_to @rocket, notice: 'Rocket was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rockets/1
  # DELETE /rockets/1.json
  def destroy
    @rocket = Rocket.find(params[:id])
    @rocket.destroy

    respond_to do |format|
      format.html { redirect_to rockets_url }
      format.json { head :ok }
    end
  end
end
