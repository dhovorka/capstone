class Api::TournamentsController < ApplicationController
before_action :authenticate_admin, except: [:index, :show]

def create
  @tournament = Tournament.new(
  name: params[:name],
  location: params[:location],
  description: params[:description]
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

def destroy
  @tournament = Tournament.find_by(id: params[:id])
  @tournament.destroy
  render "show.json.jbuilder"
end

end
