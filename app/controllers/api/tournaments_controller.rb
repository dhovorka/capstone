class Api::TournamentsController < ApplicationController
before_action :authenticate_admin, except: [:index, :show]

def create
  @tournament = Tournament.new(
  name: params[:name],
  location: params[:location],
  description: params[:description],
  image: params[:image],
  coordinates: params[:coordinates],
  website: params[:website]
  )
if @tournament.save
  render "show.json.jbuilder"
end
end

def index
@tournaments = Tournament.all
render "index.json.jbuilder"
end

def show
  @tournament = Tournament.find_by(id: params[:id])
  render "show.json.jbuilder"
end

def update
  @tournament = Tournament.find_by(id: params[:id])
  @tournament.name = params[:name] || @tournament.name
  @tournament.location = params[:location] || @tournament.location
  @tournament.description = params[:description] || @tournament.description
  @tournament.image = params[:image] || @tournament.image
  @tournament.coordinates = params[:coordinates] || @tournament.coordinates
  @tournament.website = params[:website] || @tournament.website
  @tournament.save
  render "show.json.jbuilder"
end

def destroy
  @tournament = Tournament.find_by(id: params[:id])
  @tournament.destroy
  render "show.json.jbuilder"
end

end
