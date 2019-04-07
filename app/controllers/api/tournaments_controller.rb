class Api::TournamentsController < ApplicationController

def show
@tournament = Tournament.find_by(id: params[:id])
  render "show.json.builder"
end

end
