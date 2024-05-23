class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
  end

  def edit
  end

  def create
    @places = Place.new
    @places["name"] = params["name"]
    @places.save
    redirect_to "/places"
  end

  def update
  end

  def destroy
  end
end
