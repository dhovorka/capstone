class Api::TournamentsController < ApplicationController

def index
@tournaments = Tournament.all
render "index.json.jbuilder"
end

def show
  @tournament = Tournament.find_by(id: params[:id])
  render "show.json.jbuilder"
end

end
